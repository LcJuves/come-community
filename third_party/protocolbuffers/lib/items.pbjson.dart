//
//  Generated code. Do not modify.
//  source: items.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use itemDescriptor instead')
const Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'img_url', '3': 1, '4': 1, '5': 9, '10': 'imgUrl'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cntitle', '3': 3, '4': 1, '5': 9, '10': 'cntitle'},
    {'1': 'enurl', '3': 4, '4': 1, '5': 9, '10': 'enurl'},
    {'1': 'cnurl', '3': 5, '4': 1, '5': 9, '10': 'cnurl'},
    {'1': 'currently_only_supports_chinese', '3': 6, '4': 1, '5': 8, '10': 'currentlyOnlySupportsChinese'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEhcKB2ltZ191cmwYASABKAlSBmltZ1VybBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSGA'
    'oHY250aXRsZRgDIAEoCVIHY250aXRsZRIUCgVlbnVybBgEIAEoCVIFZW51cmwSFAoFY251cmwY'
    'BSABKAlSBWNudXJsEkUKH2N1cnJlbnRseV9vbmx5X3N1cHBvcnRzX2NoaW5lc2UYBiABKAhSHG'
    'N1cnJlbnRseU9ubHlTdXBwb3J0c0NoaW5lc2U=');

@$core.Deprecated('Use itemsDescriptor instead')
const Items$json = {
  '1': 'Items',
  '2': [
    {'1': 'item_list', '3': 1, '4': 3, '5': 11, '6': '.Item', '10': 'itemList'},
  ],
};

/// Descriptor for `Items`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemsDescriptor = $convert.base64Decode(
    'CgVJdGVtcxIiCglpdGVtX2xpc3QYASADKAsyBS5JdGVtUghpdGVtTGlzdA==');

