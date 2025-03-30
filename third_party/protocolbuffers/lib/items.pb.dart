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
    $core.String? imgUrl,
    $core.String? title,
    $core.String? cntitle,
    $core.String? enurl,
    $core.String? cnurl,
    $core.bool? currentlyOnlySupportsChinese,
  }) {
    final $result = create();
    if (imgUrl != null) {
      $result.imgUrl = imgUrl;
    }
    if (title != null) {
      $result.title = title;
    }
    if (cntitle != null) {
      $result.cntitle = cntitle;
    }
    if (enurl != null) {
      $result.enurl = enurl;
    }
    if (cnurl != null) {
      $result.cnurl = cnurl;
    }
    if (currentlyOnlySupportsChinese != null) {
      $result.currentlyOnlySupportsChinese = currentlyOnlySupportsChinese;
    }
    return $result;
  }
  Item._() : super();
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Item', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imgUrl')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'cntitle')
    ..aOS(4, _omitFieldNames ? '' : 'enurl')
    ..aOS(5, _omitFieldNames ? '' : 'cnurl')
    ..aOB(6, _omitFieldNames ? '' : 'currentlyOnlySupportsChinese')
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
  void clearImgUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cntitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set cntitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCntitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearCntitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get enurl => $_getSZ(3);
  @$pb.TagNumber(4)
  set enurl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEnurl() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnurl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get cnurl => $_getSZ(4);
  @$pb.TagNumber(5)
  set cnurl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCnurl() => $_has(4);
  @$pb.TagNumber(5)
  void clearCnurl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get currentlyOnlySupportsChinese => $_getBF(5);
  @$pb.TagNumber(6)
  set currentlyOnlySupportsChinese($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentlyOnlySupportsChinese() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentlyOnlySupportsChinese() => $_clearField(6);
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
  $pb.PbList<Item> get itemList => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
