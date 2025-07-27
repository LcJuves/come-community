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
    {'1': 'emoji_icon', '3': 1, '4': 1, '5': 9, '10': 'emojiIcon'},
    {'1': 'img_url', '3': 2, '4': 1, '5': 9, '10': 'imgUrl'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'cn_title', '3': 4, '4': 1, '5': 9, '10': 'cnTitle'},
    {'1': 'en_url', '3': 5, '4': 1, '5': 9, '10': 'enUrl'},
    {'1': 'cn_url', '3': 6, '4': 1, '5': 9, '10': 'cnUrl'},
    {'1': 'currently_only_supports_chinese', '3': 7, '4': 1, '5': 8, '10': 'currentlyOnlySupportsChinese'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEh0KCmVtb2ppX2ljb24YASABKAlSCWVtb2ppSWNvbhIXCgdpbWdfdXJsGAIgASgJUg'
    'ZpbWdVcmwSFAoFdGl0bGUYAyABKAlSBXRpdGxlEhkKCGNuX3RpdGxlGAQgASgJUgdjblRpdGxl'
    'EhUKBmVuX3VybBgFIAEoCVIFZW5VcmwSFQoGY25fdXJsGAYgASgJUgVjblVybBJFCh9jdXJyZW'
    '50bHlfb25seV9zdXBwb3J0c19jaGluZXNlGAcgASgIUhxjdXJyZW50bHlPbmx5U3VwcG9ydHND'
    'aGluZXNl');

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

