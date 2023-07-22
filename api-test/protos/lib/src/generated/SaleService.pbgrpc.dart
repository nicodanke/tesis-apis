//
//  Generated code. Do not modify.
//  source: SaleService.proto
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

import 'SaleService.pb.dart' as $1;

export 'SaleService.pb.dart';

@$pb.GrpcServiceName('SaleService')
class SaleServiceClient extends $grpc.Client {
  static final _$getSalesByProductId = $grpc.ClientMethod<$1.SaleRequest, $1.SaleResponseList>(
      '/SaleService/getSalesByProductId',
      ($1.SaleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SaleResponseList.fromBuffer(value));

  SaleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.SaleResponseList> getSalesByProductId($1.SaleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSalesByProductId, request, options: options);
  }
}

@$pb.GrpcServiceName('SaleService')
abstract class SaleServiceBase extends $grpc.Service {
  $core.String get $name => 'SaleService';

  SaleServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.SaleRequest, $1.SaleResponseList>(
        'getSalesByProductId',
        getSalesByProductId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SaleRequest.fromBuffer(value),
        ($1.SaleResponseList value) => value.writeToBuffer()));
  }

  $async.Future<$1.SaleResponseList> getSalesByProductId_Pre($grpc.ServiceCall call, $async.Future<$1.SaleRequest> request) async {
    return getSalesByProductId(call, await request);
  }

  $async.Future<$1.SaleResponseList> getSalesByProductId($grpc.ServiceCall call, $1.SaleRequest request);
}
