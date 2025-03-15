//
//  Generated code. Do not modify.
//  source: items.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Item extends $pb.GeneratedMessage {
  factory Item({
    $core.String? imgUrl,
    $core.String? title,
    $core.String? cnurl,
    $core.String? enurl,
    $core.bool? onlyChineseVersion,
  }) {
    final $result = create();
    if (imgUrl != null) {
      $result.imgUrl = imgUrl;
    }
    if (title != null) {
      $result.title = title;
    }
    if (cnurl != null) {
      $result.cnurl = cnurl;
    }
    if (enurl != null) {
      $result.enurl = enurl;
    }
    if (onlyChineseVersion != null) {
      $result.onlyChineseVersion = onlyChineseVersion;
    }
    return $result;
  }
  Item._() : super();
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Item', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'cnurl')
    ..aOS(4, _omitFieldNames ? '' : 'enurl')
    ..aOB(5, _omitFieldNames ? '' : 'onlyChineseVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imgUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imgUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImgUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImgUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cnurl => $_getSZ(2);
  @$pb.TagNumber(3)
  set cnurl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCnurl() => $_has(2);
  @$pb.TagNumber(3)
  void clearCnurl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get enurl => $_getSZ(3);
  @$pb.TagNumber(4)
  set enurl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnurl() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnurl() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get onlyChineseVersion => $_getBF(4);
  @$pb.TagNumber(5)
  set onlyChineseVersion($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOnlyChineseVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearOnlyChineseVersion() => clearField(5);
}

class Items extends $pb.GeneratedMessage {
  factory Items({
    $core.Iterable<Item>? itemList,
  }) {
    final $result = create();
    if (itemList != null) {
      $result.itemList.addAll(itemList);
    }
    return $result;
  }
  Items._() : super();
  factory Items.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Items.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Items', createEmptyInstance: create)
    ..pc<Item>(1, _omitFieldNames ? '' : 'itemList', $pb.PbFieldType.PM, subBuilder: Item.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Items clone() => Items()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Items copyWith(void Function(Items) updates) => super.copyWith((message) => updates(message as Items)) as Items;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Items create() => Items._();
  Items createEmptyInstance() => create();
  static $pb.PbList<Items> createRepeated() => $pb.PbList<Items>();
  @$core.pragma('dart2js:noInline')
  static Items getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Items>(create);
  static Items? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Item> get itemList => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
