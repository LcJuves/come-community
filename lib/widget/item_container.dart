import 'package:come/constants.dart' show Constants;
import 'package:come/http_requests.dart' show fetchDesc;
import 'package:come/model/future_desc.dart' show FutureDesc;
import 'package:come/screen/preview_page.dart' show PreviewPage;
import 'package:come/widget/captive_portal_svg_image.dart'
    show CaptivePortalSvgImage;
import 'package:come/widget/clipr_superellipse_backdrop_filter.dart'
    show ClipRSuperellipseBackdropFilter;
import 'package:come/widget/superellipse_inkwell_container.dart'
    show SuperellipseInkWellContainer;
import 'package:come/widget/vector_image_icon.dart' show VectorImageIcon;
import 'package:dart_animated_emoji/dart_animated_emoji.dart'
    show AnimatedEmoji;
import 'package:flutter/cupertino.dart' show RoundedSuperellipseBorder;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart'
    show
        AnimatedOpacity,
        BlendMode,
        BorderRadius,
        BuildContext,
        Color,
        Colors,
        Column,
        CrossAxisAlignment,
        Curves,
        EdgeInsets,
        FontWeight,
        FutureBuilder,
        GestureTapCallback,
        MainAxisAlignment,
        MainAxisSize,
        MaterialPageRoute,
        MediaQuery,
        Navigator,
        Paint,
        Row,
        ShapeDecoration,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextScaler,
        TextStyle,
        Tooltip,
        TooltipTriggerMode,
        Widget;
import 'package:lottie/lottie.dart' show LottieBuilder, LottieComposition;
import 'package:protobuffers/items.pb.dart' show Item;
import 'package:url_launcher/url_launcher.dart' show launchUrl;
import 'package:url_launcher/url_launcher_string.dart' show LaunchMode;
import 'package:widget_marquee/widget_marquee.dart' show Marquee;

class ItemContainer extends StatefulWidget {
  final String _commonUrlPrefix = Constants.svgCommonUrlPrefix;
  late final String _imgUrl;
  final int totalItems;
  final Item item;
  final dynamic geoInfo;
  final double singleChildScrollViewSpacing;
  late final bool _visible;

  ItemContainer({
    super.key,
    required this.totalItems,
    required this.item,
    required this.geoInfo,
    required this.singleChildScrollViewSpacing,
  }) {
    _visible = true;
    final String itemImgUrl = item.imgUrl;
    _imgUrl = !itemImgUrl.startsWith('/')
        ? itemImgUrl
        : _commonUrlPrefix + itemImgUrl;
  }

  double _textBoxDynamicWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (singleChildScrollViewSpacing * 2) -
        (Constants.baseContainerPadding * 2) -
        Constants.vectorIconSize -
        (Constants.titleLeftPadding * 2);
    return usableWidth < Constants.urlBoxWidth
        ? usableWidth
        : Constants.urlBoxWidth;
  }

  Uri _getLaunchUrl() {
    if ("${geoInfo['country_code']}".toLowerCase().startsWith("cn") &&
        item.hasZhUrl() &&
        item.zhUrl.isNotEmpty &&
        !item.zhUrl.startsWith("#")) {
      return Uri.parse(item.zhUrl);
    }
    return (item.hasEnUrl() && item.enUrl.isNotEmpty)
        ? Uri.parse(item.enUrl)
        : Uri.parse(item.zhUrl);
  }

  String _getVisibleTitle() {
    return item.hasZhTitle() &&
            item.zhTitle.isNotEmpty &&
            "${geoInfo['country_code']}".toLowerCase().startsWith("cn")
        ? item.zhTitle
        : item.title;
  }

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  late final Uri _launchUri;
  late final String _msgDescDefaultValue;

  /// Called when the user taps this part of the material.
  late final GestureTapCallback? _onTap;
  late final Widget _icon;

  @override
  void initState() {
    super.initState();
    _launchUri = widget._getLaunchUrl();
    _msgDescDefaultValue = Uri.decodeComponent(_launchUri.toString());
    _onTap = () async {
      try {
        if (kIsWeb) {
          await launchUrl(_launchUri, mode: LaunchMode.platformDefault);
          return;
        }
        await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PreviewPage(
              title: widget._getVisibleTitle(),
              icon: _icon,
              previewUrl: widget._getLaunchUrl(),
              geoInfo: widget.geoInfo,
            ),
          ),
        );
      } catch (_) {
        await launchUrl(_launchUri, mode: LaunchMode.platformDefault);
      }
    };
    _icon = widget.item.hasEmojiIcon() &&
            AnimatedEmoji.isEmojiSupported(widget.item.emojiIcon)
        ? SizedBox.square(
            key: widget.key,
            dimension: Constants.vectorIconSize,
            child: LottieBuilder.asset(
              AnimatedEmoji.flutterNotoDotLottieAsset,
              decoder: (bytes) => LottieComposition.decodeZip(
                bytes,
                filePicker: AnimatedEmoji.fromGlyph(
                  widget.item.emojiIcon,
                )!
                    .archiveFilePicker,
              ),
            ),
          )
        : VectorImageIcon(
            useVecIcon: widget.item.hasUseVecIcon() && widget.item.useVecIcon,
            key: widget.key,
            url: widget._imgUrl,
            size: Constants.vectorIconSize,
            cacheSize: widget.totalItems,
          );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      // If the widget is visible, animate to 0.0 (invisible).
      // If the widget is hidden, animate to 1.0 (fully visible).
      opacity: widget._visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastEaseInToSlowEaseOut,
      // The green box must be a child of the AnimatedOpacity widget.
      child: ClipRSuperellipseBackdropFilter(
        key: widget.key,
        borderRadius: BorderRadius.circular(15),
        child: SuperellipseInkWellContainer(
          padding: const EdgeInsets.all(Constants.baseContainerPadding),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withAlpha(99),
          hoverColor: Colors.white.withAlpha(99),
          splashColor: Colors.white,
          onTap: _onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _icon,
              const SizedBox.square(
                dimension: Constants.titleLeftPadding + Constants.goldenRatio,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widget._textBoxDynamicWidth(context),
                    child: Marquee(
                      pause: const Duration(seconds: 3),
                      gap: Constants.edgePadding * 4,
                      child: Text(
                        textScaler: TextScaler.noScaling,
                        widget._getVisibleTitle(),
                        style: TextStyle(
                          fontSize: MediaQuery.textScalerOf(context).scale(19),
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..blendMode = BlendMode.dstOut
                            ..color = const Color.fromARGB(255, 60, 60, 60),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox.square(dimension: Constants.urlBoxTopPadding),
                  FutureBuilder<FutureDesc>(
                    key: widget.key,
                    future: fetchDesc(_launchUri),
                    initialData: FutureDesc(
                        desc: _launchUri.host, msgDesc: _msgDescDefaultValue),
                    builder: (context, snapshot) {
                      final FutureDesc futureDesc = snapshot.data!;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CaptivePortalSvgImage(),
                          const SizedBox.square(
                            dimension: Constants.balanceBackPadding +
                                Constants.balanceBackPadding +
                                Constants.goldenRatio,
                          ),
                          SizedBox(
                            width: widget._textBoxDynamicWidth(context) -
                                Constants.captivePortalIconSize -
                                Constants.captivePortalIconMarginRight,
                            child: Tooltip(
                              padding: const EdgeInsets.all(
                                (Constants.goldenRatio * 10) * 2,
                              ),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedSuperellipseBorder(
                                    borderRadius: BorderRadius.circular(
                                  (Constants.goldenRatio * 10) * 2,
                                )),
                              ),
                              textStyle: TextStyle(
                                fontSize: Constants.captivePortalIconSize,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Menlo",
                                foreground: Paint()
                                  ..blendMode = BlendMode.srcOver
                                  ..color = const Color.fromARGB(
                                    255,
                                    100,
                                    100,
                                    100,
                                  ),
                              ),
                              triggerMode: TooltipTriggerMode.manual,
                              margin: EdgeInsets.fromLTRB(
                                widget.singleChildScrollViewSpacing,
                                4,
                                widget.singleChildScrollViewSpacing,
                                4,
                              ),
                              message: futureDesc.msgDesc.isNotEmpty
                                  ? futureDesc.msgDesc
                                  : _msgDescDefaultValue,
                              waitDuration: const Duration(milliseconds: 1200),
                              exitDuration: const Duration(),
                              child: Marquee(
                                  pause: const Duration(seconds: 3),
                                  gap: (Constants.urlBoxWidth / 2) *
                                      Constants.goldenRatio,
                                  child: Text(
                                    futureDesc.desc.isNotEmpty
                                        ? futureDesc.desc
                                        : _launchUri.host,
                                    style: TextStyle(
                                      fontSize: Constants.captivePortalIconSize,
                                      fontWeight: FontWeight.w500,
                                      foreground: Paint()
                                        ..blendMode = BlendMode.dstOut
                                        ..color = const Color.fromARGB(
                                          255,
                                          100,
                                          100,
                                          100,
                                        ),
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
