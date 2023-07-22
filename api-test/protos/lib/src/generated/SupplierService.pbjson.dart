//
//  Generated code. Do not modify.
//  source: SupplierService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use empty2Descriptor instead')
const Empty2$json = {
  '1': 'Empty2',
};

/// Descriptor for `Empty2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List empty2Descriptor = $convert.base64Decode(
    'CgZFbXB0eTI=');

@$core.Deprecated('Use supplierResponseListDescriptor instead')
const SupplierResponseList$json = {
  '1': 'SupplierResponseList',
  '2': [
    {'1': 'supplierResponses', '3': 1, '4': 3, '5': 11, '6': '.SupplierResponse', '10': 'supplierResponses'},
  ],
};

/// Descriptor for `SupplierResponseList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierResponseListDescriptor = $convert.base64Decode(
    'ChRTdXBwbGllclJlc3BvbnNlTGlzdBI/ChFzdXBwbGllclJlc3BvbnNlcxgBIAMoCzIRLlN1cH'
    'BsaWVyUmVzcG9uc2VSEXN1cHBsaWVyUmVzcG9uc2Vz');

@$core.Deprecated('Use supplierResponseDescriptor instead')
const SupplierResponse$json = {
  '1': 'SupplierResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'phone', '17': true},
    {'1': 'email', '3': 5, '4': 1, '5': 9, '10': 'email'},
    {'1': 'products', '3': 6, '4': 3, '5': 11, '6': '.ProductWithSalesResponse2', '10': 'products'},
  ],
  '8': [
    {'1': '_phone'},
  ],
};

/// Descriptor for `SupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierResponseDescriptor = $convert.base64Decode(
    'ChBTdXBwbGllclJlc3BvbnNlEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'gKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3MSGQoFcGhvbmUYBCABKAlIAFIFcGhvbmWIAQESFAoF'
    'ZW1haWwYBSABKAlSBWVtYWlsEjYKCHByb2R1Y3RzGAYgAygLMhouUHJvZHVjdFdpdGhTYWxlc1'
    'Jlc3BvbnNlMlIIcHJvZHVjdHNCCAoGX3Bob25l');

@$core.Deprecated('Use productWithSalesResponse2Descriptor instead')
const ProductWithSalesResponse2$json = {
  '1': 'ProductWithSalesResponse2',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'salesQuantity', '3': 4, '4': 1, '5': 5, '10': 'salesQuantity'},
  ],
};

/// Descriptor for `ProductWithSalesResponse2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List productWithSalesResponse2Descriptor = $convert.base64Decode(
    'ChlQcm9kdWN0V2l0aFNhbGVzUmVzcG9uc2UyEg4KAmlkGAEgASgDUgJpZBISCgRuYW1lGAIgAS'
    'gJUgRuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIkCg1zYWxlc1F1YW50'
    'aXR5GAQgASgFUg1zYWxlc1F1YW50aXR5');

