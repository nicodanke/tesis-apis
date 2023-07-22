//
//  Generated code. Do not modify.
//  source: ProductService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ProductService.pb.dart' as $0;

export 'ProductService.pb.dart';

@$pb.GrpcServiceName('ProductService')
class ProductServiceClient extends $grpc.Client {
  static final _$getAllProductsWithSalesBySupplierId = $grpc.ClientMethod<$0.ProductsOfSupplierRequest, $0.ProductWithSalesResponseList>(
      '/ProductService/getAllProductsWithSalesBySupplierId',
      ($0.ProductsOfSupplierRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProductWithSalesResponseList.fromBuffer(value));
  static final _$getAllProductsWithSales = $grpc.ClientMethod<$0.Empty, $0.ProductWithSalesResponseList>(
      '/ProductService/getAllProductsWithSales',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProductWithSalesResponseList.fromBuffer(value));
  static final _$getAllProducts = $grpc.ClientMethod<$0.Empty, $0.ProductResponseList>(
      '/ProductService/getAllProducts',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ProductResponseList.fromBuffer(value));

  ProductServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ProductWithSalesResponseList> getAllProductsWithSalesBySupplierId($0.ProductsOfSupplierRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProductsWithSalesBySupplierId, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProductWithSalesResponseList> getAllProductsWithSales($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProductsWithSales, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProductResponseList> getAllProducts($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProducts, request, options: options);
  }
}

@$pb.GrpcServiceName('ProductService')
abstract class ProductServiceBase extends $grpc.Service {
  $core.String get $name => 'ProductService';

  ProductServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ProductsOfSupplierRequest, $0.ProductWithSalesResponseList>(
        'getAllProductsWithSalesBySupplierId',
        getAllProductsWithSalesBySupplierId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProductsOfSupplierRequest.fromBuffer(value),
        ($0.ProductWithSalesResponseList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ProductWithSalesResponseList>(
        'getAllProductsWithSales',
        getAllProductsWithSales_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ProductWithSalesResponseList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.ProductResponseList>(
        'getAllProducts',
        getAllProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.ProductResponseList value) => value.writeToBuffer()));
  }

  $async.Future<$0.ProductWithSalesResponseList> getAllProductsWithSalesBySupplierId_Pre($grpc.ServiceCall call, $async.Future<$0.ProductsOfSupplierRequest> request) async {
    return getAllProductsWithSalesBySupplierId(call, await request);
  }

  $async.Future<$0.ProductWithSalesResponseList> getAllProductsWithSales_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllProductsWithSales(call, await request);
  }

  $async.Future<$0.ProductResponseList> getAllProducts_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllProducts(call, await request);
  }

  $async.Future<$0.ProductWithSalesResponseList> getAllProductsWithSalesBySupplierId($grpc.ServiceCall call, $0.ProductsOfSupplierRequest request);
  $async.Future<$0.ProductWithSalesResponseList> getAllProductsWithSales($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.ProductResponseList> getAllProducts($grpc.ServiceCall call, $0.Empty request);
}
