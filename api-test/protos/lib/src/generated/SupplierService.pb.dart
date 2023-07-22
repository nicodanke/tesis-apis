//
//  Generated code. Do not modify.
//  source: SupplierService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Empty2 extends $pb.GeneratedMessage {
  factory Empty2() => create();
  Empty2._() : super();
  factory Empty2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty2', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty2 clone() => Empty2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty2 copyWith(void Function(Empty2) updates) => super.copyWith((message) => updates(message as Empty2)) as Empty2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty2 create() => Empty2._();
  Empty2 createEmptyInstance() => create();
  static $pb.PbList<Empty2> createRepeated() => $pb.PbList<Empty2>();
  @$core.pragma('dart2js:noInline')
  static Empty2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty2>(create);
  static Empty2? _defaultInstance;
}

class SupplierResponseList extends $pb.GeneratedMessage {
  factory SupplierResponseList() => create();
  SupplierResponseList._() : super();
  factory SupplierResponseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierResponseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierResponseList', createEmptyInstance: create)
    ..pc<SupplierResponse>(1, _omitFieldNames ? '' : 'supplierResponses', $pb.PbFieldType.PM, protoName: 'supplierResponses', subBuilder: SupplierResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierResponseList clone() => SupplierResponseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierResponseList copyWith(void Function(SupplierResponseList) updates) => super.copyWith((message) => updates(message as SupplierResponseList)) as SupplierResponseList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierResponseList create() => SupplierResponseList._();
  SupplierResponseList createEmptyInstance() => create();
  static $pb.PbList<SupplierResponseList> createRepeated() => $pb.PbList<SupplierResponseList>();
  @$core.pragma('dart2js:noInline')
  static SupplierResponseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierResponseList>(create);
  static SupplierResponseList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SupplierResponse> get supplierResponses => $_getList(0);
}

class SupplierResponse extends $pb.GeneratedMessage {
  factory SupplierResponse() => create();
  SupplierResponse._() : super();
  factory SupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupplierResponse', createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOS(5, _omitFieldNames ? '' : 'email')
    ..pc<ProductWithSalesResponse2>(6, _omitFieldNames ? '' : 'products', $pb.PbFieldType.PM, subBuilder: ProductWithSalesResponse2.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupplierResponse clone() => SupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupplierResponse copyWith(void Function(SupplierResponse) updates) => super.copyWith((message) => updates(message as SupplierResponse)) as SupplierResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupplierResponse create() => SupplierResponse._();
  SupplierResponse createEmptyInstance() => create();
  static $pb.PbList<SupplierResponse> createRepeated() => $pb.PbList<SupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static SupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupplierResponse>(create);
  static SupplierResponse? _defaultInstance;

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
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(5)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearEmail() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<ProductWithSalesResponse2> get products => $_getList(5);
}

class ProductWithSalesResponse2 extends $pb.GeneratedMessage {
  factory ProductWithSalesResponse2() => create();
  ProductWithSalesResponse2._() : super();
  factory ProductWithSalesResponse2.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProductWithSalesResponse2.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProductWithSalesResponse2', createEmptyInstance: create)
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
  ProductWithSalesResponse2 clone() => ProductWithSalesResponse2()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProductWithSalesResponse2 copyWith(void Function(ProductWithSalesResponse2) updates) => super.copyWith((message) => updates(message as ProductWithSalesResponse2)) as ProductWithSalesResponse2;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponse2 create() => ProductWithSalesResponse2._();
  ProductWithSalesResponse2 createEmptyInstance() => create();
  static $pb.PbList<ProductWithSalesResponse2> createRepeated() => $pb.PbList<ProductWithSalesResponse2>();
  @$core.pragma('dart2js:noInline')
  static ProductWithSalesResponse2 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProductWithSalesResponse2>(create);
  static ProductWithSalesResponse2? _defaultInstance;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
