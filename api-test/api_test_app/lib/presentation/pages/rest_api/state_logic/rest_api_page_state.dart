import 'package:api_test_app/models/test.dart';
import 'package:flutter/material.dart';

@immutable
class RestApiPageState {
  const RestApiPageState({
    this.parallelUsers = '',
    this.testTime = '',
    this.endpoint = 'api/products',
    this.test = const Test(name: 'RestAPI'),
  });

  final String parallelUsers;
  final String testTime;
  final String endpoint;
  final Test test;

  RestApiPageState copyWith({
    String? parallelUsers,
    String? testTime,
    Test? test,
    String? endpoint,
  }) {
    return RestApiPageState(
      parallelUsers: parallelUsers ?? this.parallelUsers,
      testTime: testTime ?? this.testTime,
      test: test ?? this.test,
      endpoint: endpoint ?? this.endpoint,
    );
  }
}
