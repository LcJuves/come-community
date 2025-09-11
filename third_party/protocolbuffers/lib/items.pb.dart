//
//  Generated code. Do not modify.
//  source: items.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Item extends $pb.GeneratedMessage {
  factory Item({
    $core.String? emojiIcon,
    $core.String? imgUrl,
    $core.String? zhImgUrl,
    $core.String? title,
    $core.String? zhTitle,
    $core.String? enUrl,
    $core.String? zhUrl,
    $core.bool? useVecIcon,
  }) {
    final $result = create();
    if (emojiIcon != null) {
      $result.emojiIcon = emojiIcon;
    }
    if (imgUrl != null) {
      $result.imgUrl = imgUrl;
    }
    if (zhImgUrl != null) {
      $result.zhImgUrl = zhImgUrl;
    }
    if (title != null) {
      $result.title = title;
    }
    if (zhTitle != null) {
      $result.zhTitle = zhTitle;
    }
    if (enUrl != null) {
      $result.enUrl = enUrl;
    }
    if (zhUrl != null) {
      $result.zhUrl = zhUrl;
    }
    if (useVecIcon != null) {
      $result.useVecIcon = useVecIcon;
    }
    return $result;
  }
  Item._() : super();
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Item', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'emojiIcon')
    ..aOS(2, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(3, _omitFieldNames ? '' : 'zhImgUrl')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..aOS(5, _omitFieldNames ? '' : 'zhTitle')
    ..aOS(6, _omitFieldNames ? '' : 'enUrl')
    ..aOS(7, _omitFieldNames ? '' : 'zhUrl')
    ..aOB(8, _omitFieldNames ? '' : 'useVecIcon')
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
  $core.String get emojiIcon => $_getSZ(0);
  @$pb.TagNumber(1)
  set emojiIcon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmojiIcon() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmojiIcon() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imgUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set imgUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImgUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearImgUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get zhImgUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set zhImgUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZhImgUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearZhImgUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get zhTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set zhTitle($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasZhTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearZhTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get enUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set enUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasEnUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearEnUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get zhUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set zhUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasZhUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearZhUrl() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get useVecIcon => $_getBF(7);
  @$pb.TagNumber(8)
  set useVecIcon($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUseVecIcon() => $_has(7);
  @$pb.TagNumber(8)
  void clearUseVecIcon() => $_clearField(8);
}

class Items extends $pb.GeneratedMessage {
  factory Items({
    $core.bool? tempTipVisible,
    $core.String? specIpAddrPrefix,
    $core.bool? ipv6Guard,
    $core.bool? shutdownSomeArea,
    $core.bool? useBlurWallpaper,
    $core.Iterable<Item>? itemList,
  }) {
    final $result = create();
    if (tempTipVisible != null) {
      $result.tempTipVisible = tempTipVisible;
    }
    if (specIpAddrPrefix != null) {
      $result.specIpAddrPrefix = specIpAddrPrefix;
    }
    if (ipv6Guard != null) {
      $result.ipv6Guard = ipv6Guard;
    }
    if (shutdownSomeArea != null) {
      $result.shutdownSomeArea = shutdownSomeArea;
    }
    if (useBlurWallpaper != null) {
      $result.useBlurWallpaper = useBlurWallpaper;
    }
    if (itemList != null) {
      $result.itemList.addAll(itemList);
    }
    return $result;
  }
  Items._() : super();
  factory Items.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Items.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Items', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'tempTipVisible')
    ..aOS(2, _omitFieldNames ? '' : 'specIpAddrPrefix')
    ..aOB(3, _omitFieldNames ? '' : 'ipv6Guard')
    ..aOB(4, _omitFieldNames ? '' : 'shutdownSomeArea')
    ..aOB(5, _omitFieldNames ? '' : 'useBlurWallpaper')
    ..pc<Item>(6, _omitFieldNames ? '' : 'itemList', $pb.PbFieldType.PM, subBuilder: Item.create)
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
  $core.bool get tempTipVisible => $_getBF(0);
  @$pb.TagNumber(1)
  set tempTipVisible($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTempTipVisible() => $_has(0);
  @$pb.TagNumber(1)
  void clearTempTipVisible() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get specIpAddrPrefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set specIpAddrPrefix($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpecIpAddrPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpecIpAddrPrefix() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get ipv6Guard => $_getBF(2);
  @$pb.TagNumber(3)
  set ipv6Guard($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpv6Guard() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpv6Guard() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get shutdownSomeArea => $_getBF(3);
  @$pb.TagNumber(4)
  set shutdownSomeArea($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasShutdownSomeArea() => $_has(3);
  @$pb.TagNumber(4)
  void clearShutdownSomeArea() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get useBlurWallpaper => $_getBF(4);
  @$pb.TagNumber(5)
  set useBlurWallpaper($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUseBlurWallpaper() => $_has(4);
  @$pb.TagNumber(5)
  void clearUseBlurWallpaper() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<Item> get itemList => $_getList(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
