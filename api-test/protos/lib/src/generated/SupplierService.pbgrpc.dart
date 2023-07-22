//
//  Generated code. Do not modify.
//  source: SupplierService.proto
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

import 'SupplierService.pb.dart' as $2;

export 'SupplierService.pb.dart';

@$pb.GrpcServiceName('SupplierService')
class SupplierServiceClient extends $grpc.Client {
  static final _$getAllSuppliersWithTopProducts = $grpc.ClientMethod<$2.Empty2, $2.SupplierResponseList>(
      '/SupplierService/getAllSuppliersWithTopProducts',
      ($2.Empty2 value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SupplierResponseList.fromBuffer(value));

  SupplierServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.SupplierResponseList> getAllSuppliersWithTopProducts($2.Empty2 request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSuppliersWithTopProducts, request, options: options);
  }
}

@$pb.GrpcServiceName('SupplierService')
abstract class SupplierServiceBase extends $grpc.Service {
  $core.String get $name => 'SupplierService';

  SupplierServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.Empty2, $2.SupplierResponseList>(
        'getAllSuppliersWithTopProducts',
        getAllSuppliersWithTopProducts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Empty2.fromBuffer(value),
        ($2.SupplierResponseList value) => value.writeToBuffer()));
  }

  $async.Future<$2.SupplierResponseList> getAllSuppliersWithTopProducts_Pre($grpc.ServiceCall call, $async.Future<$2.Empty2> request) async {
    return getAllSuppliersWithTopProducts(call, await request);
  }

  $async.Future<$2.SupplierResponseList> getAllSuppliersWithTopProducts($grpc.ServiceCall call, $2.Empty2 request);
}
