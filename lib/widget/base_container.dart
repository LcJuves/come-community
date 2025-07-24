import 'package:devfans/future_data.dart';
import 'package:devfans/screen/preview_page.dart';
import 'package:devfans/widget/captive_portal_svg_picture.dart';
import 'package:devfans/widget/clip_rrect_backdrop_filter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
  BaseContainer(
      {super.key,
      required this.item,
      required this.geoInfo,
      required this.singleChildScrollViewSpacing}) {
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

  String _getLaunchUrl() {
    if (geoInfo['country_code'] == "CN" &&
        (item.cnurl != "#" || item.cnurl.isNotEmpty)) {
      return (item.cnurl.isNotEmpty && item.cnurl != "#")
          ? item.cnurl
          : item.enurl;
    }
    return (item.enurl.isNotEmpty && item.enurl != "#")
        ? item.enurl
        : item.cnurl;
  }

  @override
  State<BaseContainer> createState() => _BaseContainerState();
}

class _BaseContainerState extends State<BaseContainer> {
  @override
  Widget build(BuildContext context) {
    final launchUri = Uri.parse(widget._getLaunchUrl());
    final svgNetworkIcon =
        SvgNetworkIcon(url: widget._imgUrl, size: Constants.svgIconSize);
    return ClipRRrectBackdropFilter(
      borderRadius: BorderRadius.circular(15),
      child: InkWellContainer(
        key: GlobalObjectKey(widget.item),
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
            await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PreviewPage(
                  previewUrl: widget._getLaunchUrl(),
                  svgNetworkIcon: svgNetworkIcon,
                  title: widget.item.title),
            ));
          } catch (_) {
            await launchUrl(launchUri, mode: LaunchMode.inAppWebView);
          }
        },
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          svgNetworkIcon,
          Padding(
            padding: const EdgeInsets.only(
                left: Constants.titleLeftPadding + Constants.goldenRatio),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: widget._textBoxDynamicWidth(context),
                  child: Marquee(
                      gap: Constants.edgePadding * 4,
                      child: Text(
                        textScaler: TextScaler.noScaling,
                        widget.item.title,
                        style: TextStyle(
                            fontSize:
                                MediaQuery.textScalerOf(context).scale(19),
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..blendMode = BlendMode.dstOut
                              ..color = const Color.fromARGB(255, 60, 60, 60)),
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: Constants.urlBoxTopPadding),
                  child: FutureBuilder<FutureDesc>(
                      future: fetchDesc(launchUri.toString()),
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
                                      (Constants.goldenRatio * 10) * 2),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(
                                        (Constants.goldenRatio * 10) * 2),
                                  ),
                                  textStyle: TextStyle(
                                      fontSize:
                                          Constants.captivePortalSvgIconSize,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Menlo",
                                      foreground: Paint()
                                        ..blendMode = BlendMode.srcOver
                                        ..color = const Color.fromARGB(
                                            255, 100, 100, 100)),
                                  triggerMode: TooltipTriggerMode.manual,
                                  margin: EdgeInsets.fromLTRB(
                                      widget.singleChildScrollViewSpacing,
                                      4,
                                      widget.singleChildScrollViewSpacing,
                                      4),
                                  message: futureDesc.msgDesc.isNotEmpty
                                      ? futureDesc.msgDesc
                                      : Uri.decodeComponent(
                                          launchUri.toString()),
                                  waitDuration:
                                      const Duration(milliseconds: 1200),
                                  exitDuration: const Duration(),
                                  child: TextMarquee(
                                    spaceSize: (Constants.urlBoxWidth / 2) *
                                        Constants.goldenRatio,
                                    futureDesc.desc.isNotEmpty
                                        ? futureDesc.desc
                                        : launchUri.host,
                                    style: TextStyle(
                                        fontSize:
                                            Constants.captivePortalSvgIconSize,
                                        fontWeight: FontWeight.w500,
                                        foreground: Paint()
                                          ..blendMode = BlendMode.dstOut
                                          ..color = const Color.fromARGB(
                                              255, 100, 100, 100)),
                                  ),
                                ))
                          ],
                        );
                      }),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
