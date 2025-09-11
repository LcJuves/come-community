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
    {'1': 'zh_img_url', '3': 3, '4': 1, '5': 9, '10': 'zhImgUrl'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '10': 'title'},
    {'1': 'zh_title', '3': 5, '4': 1, '5': 9, '10': 'zhTitle'},
    {'1': 'en_url', '3': 6, '4': 1, '5': 9, '10': 'enUrl'},
    {'1': 'zh_url', '3': 7, '4': 1, '5': 9, '10': 'zhUrl'},
    {'1': 'use_vec_icon', '3': 8, '4': 1, '5': 8, '10': 'useVecIcon'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode(
    'CgRJdGVtEh0KCmVtb2ppX2ljb24YASABKAlSCWVtb2ppSWNvbhIXCgdpbWdfdXJsGAIgASgJUg'
    'ZpbWdVcmwSHAoKemhfaW1nX3VybBgDIAEoCVIIemhJbWdVcmwSFAoFdGl0bGUYBCABKAlSBXRp'
    'dGxlEhkKCHpoX3RpdGxlGAUgASgJUgd6aFRpdGxlEhUKBmVuX3VybBgGIAEoCVIFZW5VcmwSFQ'
    'oGemhfdXJsGAcgASgJUgV6aFVybBIgCgx1c2VfdmVjX2ljb24YCCABKAhSCnVzZVZlY0ljb24=');

@$core.Deprecated('Use itemsDescriptor instead')
const Items$json = {
  '1': 'Items',
  '2': [
    {'1': 'temp_tip_visible', '3': 1, '4': 1, '5': 8, '10': 'tempTipVisible'},
    {'1': 'spec_ip_addr_prefix', '3': 2, '4': 1, '5': 9, '10': 'specIpAddrPrefix'},
    {'1': 'ipv6_guard', '3': 3, '4': 1, '5': 8, '10': 'ipv6Guard'},
    {'1': 'shutdown_some_area', '3': 4, '4': 1, '5': 8, '10': 'shutdownSomeArea'},
    {'1': 'use_blur_wallpaper', '3': 5, '4': 1, '5': 8, '10': 'useBlurWallpaper'},
    {'1': 'item_list', '3': 6, '4': 3, '5': 11, '6': '.Item', '10': 'itemList'},
  ],
};

/// Descriptor for `Items`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemsDescriptor = $convert.base64Decode(
    'CgVJdGVtcxIoChB0ZW1wX3RpcF92aXNpYmxlGAEgASgIUg50ZW1wVGlwVmlzaWJsZRItChNzcG'
    'VjX2lwX2FkZHJfcHJlZml4GAIgASgJUhBzcGVjSXBBZGRyUHJlZml4Eh0KCmlwdjZfZ3VhcmQY'
    'AyABKAhSCWlwdjZHdWFyZBIsChJzaHV0ZG93bl9zb21lX2FyZWEYBCABKAhSEHNodXRkb3duU2'
    '9tZUFyZWESLAoSdXNlX2JsdXJfd2FsbHBhcGVyGAUgASgIUhB1c2VCbHVyV2FsbHBhcGVyEiIK'
    'CWl0ZW1fbGlzdBgGIAMoCzIFLkl0ZW1SCGl0ZW1MaXN0');

