//
//  Generated code. Do not modify.
//  source: ProductService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class ProductsOfSupplierRequest extends $pb.GeneratedMessage {
  factory ProductsOfSupplierRequest() => create();
  ProductsOfSupplierRequest._() : super();
  factory ProductsOfSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductsOfSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductsOfSupplierRequest', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'supplierId', protoName: 'supplierId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductsOfSupplierRequest clone() => ProductsOfSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductsOfSupplierRequest copyWith(void Function(ProductsOfSupplierRequest) updates) => super.copyWith((message) => updates(message as ProductsOfSupplierRequest)) as ProductsOfSupplierRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductsOfSupplierRequest create() => ProductsOfSupplierRequest._();
  ProductsOfSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<ProductsOfSupplierRequest> createRepeated() => $pb.PbList<ProductsOfSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static ProductsOfSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductsOfSupplierRequest>(create);
  static ProductsOfSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get supplierId => $_getI64(0);
  @$pb.TagNumber(1)
  set supplierId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierId() => clearField(1);
}

class ProductWithSalesResponseList extends $pb.GeneratedMessage {
  factory ProductWithSalesResponseList() => create();
  ProductWithSalesResponseList._() : super();
  factory ProductWithSalesResponseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductWithSalesResponseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductWithSalesResponseList', createEmptyInstance: create)
    ..pc<ProductWithSalesResponse>(1, _omitFieldNames ? '' : 'productResponses', $pb.PbFieldType.PM, protoName: 'productResponses', subBuilder: ProductWithSalesResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductWithSalesResponseList clone() => ProductWithSalesResponseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductWithSalesResponseList copyWith(void Function(ProductWithSalesResponseList) updates) => super.copyWith((message) => updates(message as ProductWithSalesResponseList)) as ProductWithSalesResponseList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponseList create() => ProductWithSalesResponseList._();
  ProductWithSalesResponseList createEmptyInstance() => create();
  static $pb.PbList<ProductWithSalesResponseList> createRepeated() => $pb.PbList<ProductWithSalesResponseList>();
  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductWithSalesResponseList>(create);
  static ProductWithSalesResponseList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProductWithSalesResponse> get productResponses => $_getList(0);
}

class ProductWithSalesResponse extends $pb.GeneratedMessage {
  factory ProductWithSalesResponse() => create();
  ProductWithSalesResponse._() : super();
  factory ProductWithSalesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductWithSalesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductWithSalesResponse', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'salesQuantity', $pb.PbFieldType.O3, protoName: 'salesQuantity')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductWithSalesResponse clone() => ProductWithSalesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductWithSalesResponse copyWith(void Function(ProductWithSalesResponse) updates) => super.copyWith((message) => updates(message as ProductWithSalesResponse)) as ProductWithSalesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponse create() => ProductWithSalesResponse._();
  ProductWithSalesResponse createEmptyInstance() => create();
  static $pb.PbList<ProductWithSalesResponse> createRepeated() => $pb.PbList<ProductWithSalesResponse>();
  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductWithSalesResponse>(create);
  static ProductWithSalesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get salesQuantity => $_getIZ(3);
  @$pb.TagNumber(4)
  set salesQuantity($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSalesQuantity() => $_has(3);
  @$pb.TagNumber(4)
  void clearSalesQuantity() => clearField(4);
}

class ProductResponseList extends $pb.GeneratedMessage {
  factory ProductResponseList() => create();
  ProductResponseList._() : super();
  factory ProductResponseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductResponseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductResponseList', createEmptyInstance: create)
    ..pc<ProductResponse>(1, _omitFieldNames ? '' : 'productResponses', $pb.PbFieldType.PM, protoName: 'productResponses', subBuilder: ProductResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductResponseList clone() => ProductResponseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductResponseList copyWith(void Function(ProductResponseList) updates) => super.copyWith((message) => updates(message as ProductResponseList)) as ProductResponseList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductResponseList create() => ProductResponseList._();
  ProductResponseList createEmptyInstance() => create();
  static $pb.PbList<ProductResponseList> createRepeated() => $pb.PbList<ProductResponseList>();
  @$core.pragma('dart2js:noInline')
  static ProductResponseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductResponseList>(create);
  static ProductResponseList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProductResponse> get productResponses => $_getList(0);
}

class ProductResponse extends $pb.GeneratedMessage {
  factory ProductResponse() => create();
  ProductResponse._() : super();
  factory ProductResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductResponse', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aInt64(4, _omitFieldNames ? '' : 'supplierId', protoName: 'supplierId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProductResponse clone() => ProductResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductResponse copyWith(void Function(ProductResponse) updates) => super.copyWith((message) => updates(message as ProductResponse)) as ProductResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductResponse create() => ProductResponse._();
  ProductResponse createEmptyInstance() => create();
  static $pb.PbList<ProductResponse> createRepeated() => $pb.PbList<ProductResponse>();
  @$core.pragma('dart2js:noInline')
  static ProductResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductResponse>(create);
  static ProductResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get supplierId => $_getI64(3);
  @$pb.TagNumber(4)
  set supplierId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSupplierId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupplierId() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
