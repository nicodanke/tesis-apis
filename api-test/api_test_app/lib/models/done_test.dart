import 'package:api_test_app/models/test.dart';

class DoneTest extends Test {
  final double avgTime;
  final double testTime;
  final int minValue;
  final int maxValue;
  final double totalTime;
  final int requests;
  final int failedRequests;
  final int successfulRequests;
  final double requestsPerSecond;
  final String url;

  const DoneTest({
    required String name,
    required this.avgTime,
    required this.minValue,
    required this.maxValue,
    required this.totalTime,
    required this.requests,
    required this.failedRequests,
    required this.successfulRequests,
    required this.requestsPerSecond,
    required this.testTime,
    required this.url,
  }) : super(name: name);

  @override
  List<Object> get props => [
        name,
        avgTime,
        minValue,
        maxValue,
        totalTime,
        requests,
        failedRequests,
        successfulRequests,
        requestsPerSecond,
        testTime,
        url,
      ];
}
