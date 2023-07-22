import 'package:api_test_app/models/done_test.dart';
import 'package:api_test_app/models/failed_test.dart';
import 'package:api_test_app/models/in_progress_test.dart';
import 'package:api_test_app/presentation/pages/config/state_logic/config_page_notifier.dart';
import 'package:api_test_app/presentation/pages/grpc/state_logic/grpc_api_page_state.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:protos/protos.dart';

class GrpcApiPageNotifier extends StateNotifier<GrpcApiPageState> {
  final StateNotifierProviderRef<GrpcApiPageNotifier, GrpcApiPageState> ref;
  GrpcApiPageNotifier({required this.ref}) : super(GrpcApiPageState());

  void setParallelUsers(String value) {
    state = state.copyWith(parallelUsers: value);
  }

  void setTestTime(String value) {
    state = state.copyWith(testTime: value);
  }

  void setEndpoint(String value) {
    state = state.copyWith(endpoint: value);
  }

  void reset() {
    state = GrpcApiPageState();
  }

  Future<void> performTest() async {
    final testName = state.test.name;
    final time = double.tryParse(state.testTime) ?? 1;
    final endpoint = state.endpoint;
    final users = int.tryParse(state.parallelUsers) ?? 1;
    final baseUrl =
        ref.read(configPageProvider.select((value) => value.baseUrlGrpcApi));
    final productsChannel = ClientChannel(
      baseUrl,
      port: 9095,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stubProduct = ProductServiceClient(productsChannel);

    final suppliersChannel = ClientChannel(
      baseUrl,
      port: 9096,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stubSupplier = SupplierServiceClient(suppliersChannel);
    var port = '';
    if (endpoint == 'api/products' || endpoint == 'api/products/sales') {
      port = '9095';
    } else if (endpoint == 'api/suppliers/topProducts') {
      port = '9096';
    }

    state = state.copyWith(
      test: InProgressTest(
        name: testName,
        testTime: time,
        url: '$baseUrl:$port/$endpoint',
      ),
    );

    List<Future<DoneTest>> calls = [];
    for (int i = 0; i < users; i++) {
      calls.add(_performCall(
        stubProduct,
        stubSupplier,
        testName,
        time,
        baseUrl,
        endpoint,
      ));
    }

    try {
      final tests = await Future.wait(calls);
      var maxTotalTime = tests.first.totalTime;
      var totalAvgTime = 0.0;
      var totalMinValue = tests.first.minValue;
      var totalMaxValue = tests.first.maxValue;
      var totalFailedRequests = 0;
      var totalSuccessfulRequests = 0;
      var totalRequests = 0;
      for (DoneTest aux in tests) {
        if (aux.totalTime > maxTotalTime) {
          maxTotalTime = aux.totalTime;
        }
        if (aux.minValue < totalMinValue) {
          totalMinValue = aux.minValue;
        }
        if (aux.maxValue > totalMaxValue) {
          totalMaxValue = aux.maxValue;
        }
        totalAvgTime += aux.avgTime;
        totalMinValue += aux.minValue;
        totalMaxValue += aux.maxValue;
        totalFailedRequests += aux.failedRequests;
        totalSuccessfulRequests += aux.successfulRequests;
        totalRequests += aux.requests;
      }
      state = state.copyWith(
        test: DoneTest(
          name: testName,
          avgTime: totalAvgTime / tests.length,
          minValue: totalMinValue,
          maxValue: totalMaxValue,
          totalTime: maxTotalTime,
          requests: totalRequests,
          failedRequests: totalFailedRequests,
          successfulRequests: totalSuccessfulRequests,
          requestsPerSecond: totalRequests / maxTotalTime,
          testTime: time,
          url: '$baseUrl:$port/$endpoint',
        ),
      );
    } catch (e) {
      state = state.copyWith(
        test: FailedTest(
          name: testName,
          message: e.toString(),
          url: '$baseUrl:$port/$endpoint',
        ),
      );
    } finally {
      productsChannel.terminate();
      suppliersChannel.terminate();
    }
  }

  Future<DoneTest> _performCall(
    ProductServiceClient stubProduct,
    SupplierServiceClient stubSupplier,
    String testName,
    double time,
    String baseUrl,
    String endpoint,
  ) async {
    List<int> responseTimes = [];
    final stopwatch = Stopwatch()..start();
    int counter = 0;
    int failedCounter = 0;
    int okCounter = 0;
    while (stopwatch.elapsedMilliseconds < time * 60 * 1000) {
      final stopwatch2 = Stopwatch()..start();
      try {
        if (endpoint == 'api/products') {
          await stubProduct.getAllProducts(Empty());
        } else if (endpoint == 'api/products/sales') {
          await stubProduct.getAllProductsWithSales(Empty());
        } else if (endpoint == 'api/suppliers/topProducts') {
          await stubSupplier.getAllSuppliersWithTopProducts(Empty2());
        }
        okCounter++;
      } on Exception {
        failedCounter++;
      }
      responseTimes.add(stopwatch2.elapsedMilliseconds);
      counter++;
    }
    final totalTime = stopwatch.elapsedMilliseconds / 1000;
    final sum = responseTimes.fold(0, (prev, current) => prev + current);
    final minValue = responseTimes
        .reduce((value, element) => value < element ? value : element);
    final maxValue = responseTimes
        .reduce((value, element) => value > element ? value : element);
    final avgTime = sum / counter;
    return DoneTest(
      name: testName,
      avgTime: avgTime,
      minValue: minValue,
      maxValue: maxValue,
      totalTime: totalTime,
      requests: counter,
      failedRequests: failedCounter,
      successfulRequests: okCounter,
      requestsPerSecond: counter / totalTime,
      testTime: time,
      url: '$baseUrl/$endpoint',
    );
  }
}

final grpcApiPageProvider =
    StateNotifierProvider<GrpcApiPageNotifier, GrpcApiPageState>((ref) {
  return GrpcApiPageNotifier(ref: ref);
});
