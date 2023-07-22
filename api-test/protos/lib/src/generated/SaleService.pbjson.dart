//
//  Generated code. Do not modify.
//  source: SaleService.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use saleRequestDescriptor instead')
const SaleRequest$json = {
  '1': 'SaleRequest',
  '2': [
    {'1': 'productId', '3': 1, '4': 1, '5': 3, '10': 'productId'},
  ],
};

/// Descriptor for `SaleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saleRequestDescriptor = $convert.base64Decode(
    'CgtTYWxlUmVxdWVzdBIcCglwcm9kdWN0SWQYASABKANSCXByb2R1Y3RJZA==');

@$core.Deprecated('Use saleResponseListDescriptor instead')
const SaleResponseList$json = {
  '1': 'SaleResponseList',
  '2': [
    {'1': 'saleResponses', '3': 1, '4': 3, '5': 11, '6': '.SaleResponse', '10': 'saleResponses'},
  ],
};

/// Descriptor for `SaleResponseList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saleResponseListDescriptor = $convert.base64Decode(
    'ChBTYWxlUmVzcG9uc2VMaXN0EjMKDXNhbGVSZXNwb25zZXMYASADKAsyDS5TYWxlUmVzcG9uc2'
    'VSDXNhbGVSZXNwb25zZXM=');

@$core.Deprecated('Use saleResponseDescriptor instead')
const SaleResponse$json = {
  '1': 'SaleResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'productId', '3': 2, '4': 1, '5': 3, '10': 'productId'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'unitPrice', '3': 4, '4': 1, '5': 1, '10': 'unitPrice'},
  ],
};

/// Descriptor for `SaleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saleResponseDescriptor = $convert.base64Decode(
    'CgxTYWxlUmVzcG9uc2USDgoCaWQYASABKANSAmlkEhwKCXByb2R1Y3RJZBgCIAEoA1IJcHJvZH'
    'VjdElkEhoKCHF1YW50aXR5GAMgASgFUghxdWFudGl0eRIcCgl1bml0UHJpY2UYBCABKAFSCXVu'
    'aXRQcmljZQ==');

