import 'package:dart_animated_emoji/dart_animated_emoji.dart';
import 'package:devfans/http_requests.dart';
import 'package:devfans/model/future_desc.dart';
import 'package:devfans/screen/preview_page.dart';
import 'package:devfans/widget/captive_portal_svg_picture.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:protobuffers/items.pb.dart';
import 'package:text_marquee/text_marquee.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_marquee/widget_marquee.dart';

import '../constants.dart';
import 'inkwell_container.dart';
import 'svg_network_icon.dart';

// ignore: must_be_immutable
class BaseContainer extends StatefulWidget {
  final String _commonUrlPrefix = Constants.svgCommonUrlPrefix;
  late String _imgUrl;
  final Item item;
  final dynamic geoInfo;
  final double singleChildScrollViewSpacing;
  BaseContainer({
    super.key,
    required this.item,
    required this.geoInfo,
    required this.singleChildScrollViewSpacing,
  }) {
    _imgUrl = item.imgUrl;
    if (_imgUrl.startsWith('/')) {
      _imgUrl = _commonUrlPrefix + _imgUrl;
    }
  }

  double _textBoxDynamicWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (singleChildScrollViewSpacing * 2) -
        (Constants.baseContainerPadding * 2) -
        Constants.svgIconSize -
        (Constants.titleLeftPadding * 2);
    return usableWidth < Constants.urlBoxWidth
        ? usableWidth
        : Constants.urlBoxWidth;
  }

  Uri _getLaunchUrl() {
    if (geoInfo['country_code'] == "CN" &&
        item.hasZhUrl() &&
        item.zhUrl.isNotEmpty &&
        !item.zhUrl.startsWith("#")) {
      return Uri.parse(item.zhUrl);
    }
    return Uri.parse(item.enUrl);
  }

  String _getVisibleTitle() {
    return item.hasZhTitle() && geoInfo['country_code'] == "CN"
        ? item.zhTitle
        : item.title;
  }

  @override
  State<BaseContainer> createState() => _BaseContainerState();
}

class _BaseContainerState extends State<BaseContainer> {
  @override
  Widget build(BuildContext context) {
    final launchUri = widget._getLaunchUrl();
    final icon = widget.item.hasEmojiIcon() &&
            AnimatedEmoji.isEmojiSupported(widget.item.emojiIcon)
        ? SizedBox.square(
            key: widget.key,
            dimension: Constants.svgIconSize,
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
        : SvgNetworkIcon(
            key: widget.key, url: widget._imgUrl, size: Constants.svgIconSize);
    return ClipRRrectBackdropFilter(
      key: widget.key,
      borderRadius: BorderRadius.circular(15),
      child: InkWellContainer(
        padding: const EdgeInsets.all(Constants.baseContainerPadding),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withAlpha(199),
        hoverColor: Colors.white.withAlpha(115),
        splashColor: Colors.white,
        onTap: () async {
          try {
            if (kIsWeb) {
              await launchUrl(launchUri, mode: LaunchMode.inAppWebView);
              return;
            }
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PreviewPage(
                  title: widget._getVisibleTitle(),
                  icon: icon,
                  previewUrl: widget._getLaunchUrl(),
                ),
              ),
            );
          } catch (_) {
            await launchUrl(launchUri, mode: LaunchMode.inAppWebView);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
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
                  future: fetchDesc(launchUri),
                  initialData: FutureDesc(desc: "", msgDesc: ""),
                  builder: (context, snapshot) {
                    final FutureDesc futureDesc = snapshot.data!;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CaptivePortalSvgPicture(),
                        const SizedBox.square(
                          dimension: Constants.balanceBackPadding +
                              Constants.balanceBackPadding +
                              Constants.goldenRatio,
                        ),
                        SizedBox(
                          width: widget._textBoxDynamicWidth(context) -
                              Constants.captivePortalSvgIconSize -
                              Constants.captivePortalSvgIconMarginRight,
                          child: Tooltip(
                            padding: const EdgeInsets.all(
                              (Constants.goldenRatio * 10) * 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(
                                (Constants.goldenRatio * 10) * 2,
                              ),
                            ),
                            textStyle: TextStyle(
                              fontSize: Constants.captivePortalSvgIconSize,
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
                                : launchUri.toString(),
                            waitDuration: const Duration(milliseconds: 1200),
                            exitDuration: const Duration(),
                            child: TextMarquee(
                              spaceSize: (Constants.urlBoxWidth / 2) *
                                  Constants.goldenRatio,
                              futureDesc.desc.isNotEmpty
                                  ? futureDesc.desc
                                  : launchUri.host,
                              style: TextStyle(
                                fontSize: Constants.captivePortalSvgIconSize,
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
                            ),
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
    );
  }
}
