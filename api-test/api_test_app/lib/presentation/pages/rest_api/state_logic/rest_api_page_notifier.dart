import 'package:api_test_app/models/done_test.dart';
import 'package:api_test_app/models/failed_test.dart';
import 'package:api_test_app/models/in_progress_test.dart';
import 'package:api_test_app/presentation/pages/config/state_logic/config_page_notifier.dart';
import 'package:http/http.dart' as http;
import 'package:api_test_app/presentation/pages/rest_api/state_logic/rest_api_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestApiPageNotifier extends StateNotifier<RestApiPageState> {
  final StateNotifierProviderRef<RestApiPageNotifier, RestApiPageState> ref;
  RestApiPageNotifier({required this.ref}) : super(RestApiPageState());

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
    state = RestApiPageState();
  }

  Future<void> performTest() async {
    final testName = state.test.name;
    final time = double.tryParse(state.testTime) ?? 1;
    final endpoint = state.endpoint;
    final users = int.tryParse(state.parallelUsers) ?? 1;
    final baseUrl =
        ref.read(configPageProvider.select((value) => value.baseUrlRestApi));
    state = state.copyWith(
      test: InProgressTest(
        name: testName,
        testTime: time,
        url: '$baseUrl/$endpoint',
      ),
    );
    var client = http.Client();
    List<Future<DoneTest>> calls = [];
    for (int i = 0; i < users; i++) {
      calls.add(_performCall(client, testName, time, baseUrl, endpoint));
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
          url: '$baseUrl/$endpoint',
        ),
      );
    } catch (e) {
      state = state.copyWith(
        test: FailedTest(
          name: testName,
          message: e.toString(),
          url: '$baseUrl/$endpoint',
        ),
      );
    } finally {
      client.close();
    }
  }

  Future<DoneTest> _performCall(http.Client client, String testName,
      double time, String baseUrl, String endpoint) async {
    List<int> responseTimes = [];
    int counter = 0, failedCounter = 0, okCounter = 0;
    final stopwatch = Stopwatch()..start();
    while (stopwatch.elapsedMilliseconds < time * 60 * 1000) {
      final stopwatch2 = Stopwatch()..start();
      final response = await client.get(
        Uri.http(baseUrl, endpoint),
      );
      responseTimes.add(stopwatch2.elapsedMilliseconds);
      if (response.statusCode != 200) {
        failedCounter++;
      } else {
        okCounter++;
      }
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

final restApiPageProvider =
    StateNotifierProvider<RestApiPageNotifier, RestApiPageState>((ref) {
  return RestApiPageNotifier(ref: ref);
});
