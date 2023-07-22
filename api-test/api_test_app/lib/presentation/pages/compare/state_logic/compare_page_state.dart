import 'package:api_test_app/models/test.dart';
import 'package:flutter/material.dart';

@immutable
class ComparePageState {
  const ComparePageState({
    this.parallelUsers = '',
    this.testTime = '',
    this.endpoint = 'api/products',
    this.inProgress = false,
    this.concurrent = false,
    this.tests = const [],
  });

  final String parallelUsers;
  final String testTime;
  final String endpoint;
  final bool inProgress;
  final bool concurrent;
  final List<Test> tests;

  ComparePageState copyWith({
    String? parallelUsers,
    String? testTime,
    List<Test>? tests,
    String? endpoint,
    bool? inProgress,
    bool? concurrent,
  }) {
    return ComparePageState(
      parallelUsers: parallelUsers ?? this.parallelUsers,
      testTime: testTime ?? this.testTime,
      tests: tests ?? this.tests,
      endpoint: endpoint ?? this.endpoint,
      inProgress: inProgress ?? this.inProgress,
      concurrent: concurrent ?? this.concurrent,
    );
  }
}
