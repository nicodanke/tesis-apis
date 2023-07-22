import 'package:flutter/material.dart';

@immutable
class ConfigPageState {
  const ConfigPageState({
    this.baseUrlRestApi = '192.168.0.62:8080',
    this.baseUrlMixedApi = '192.168.0.62:8081',
    this.baseUrlGrpcApi = '192.168.0.62',
    this.salesPort = '9094',
    this.productsPort = '9095',
    this.suppliersPort = '9096',
  });

  final String baseUrlRestApi;
  final String baseUrlMixedApi;
  final String baseUrlGrpcApi;
  final String productsPort;
  final String salesPort;
  final String suppliersPort;

  ConfigPageState copyWith({
    String? baseUrlRestApi,
    String? baseUrlMixedApi,
    String? baseUrlGrpcApi,
    String? productsPort,
    String? salesPort,
    String? suppliersPort,
  }) {
    return ConfigPageState(
      baseUrlRestApi: baseUrlRestApi ?? this.baseUrlRestApi,
      baseUrlMixedApi: baseUrlMixedApi ?? this.baseUrlMixedApi,
      baseUrlGrpcApi: baseUrlGrpcApi ?? this.baseUrlGrpcApi,
      productsPort: productsPort ?? this.productsPort,
      salesPort: salesPort ?? this.salesPort,
      suppliersPort: suppliersPort ?? this.suppliersPort,
    );
  }
}
