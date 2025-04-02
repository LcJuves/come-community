import 'package:devfans/future_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protobuffers/items.pb.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'inkwell_container.dart';
import 'svg_network_icon.dart';

// ignore: must_be_immutable
class BaseContainer extends StatefulWidget {
  final String _commonUrlPrefix = Constants.svgCommonUrlPrefix;
  late String _imgUrl;
  final Item item;
  final dynamic geoInfo;
  final String captivePortalSvg;
  BaseContainer(
      {super.key,
      required this.item,
      required this.geoInfo,
      required this.captivePortalSvg}) {
    _imgUrl = item.imgUrl;
    if (_imgUrl.startsWith('/')) {
      _imgUrl = _commonUrlPrefix + _imgUrl;
    }
  }

  double _textBoxDynamicWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (Constants.edgePadding * 2) -
        (Constants.baseContainerPadding * 2) -
        Constants.svgIconSize -
        Constants.titleLeftPadding;
    return usableWidth < Constants.urlBoxWidth
        ? usableWidth
        : Constants.urlBoxWidth;
  }

  String _getLaunchUrl() {
    if (geoInfo['country_code'] == "CN" &&
        (item.cnurl != "#" || item.cnurl.isNotEmpty)) {
      return item.cnurl;
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
    return InkWellContainer(
        key: GlobalObjectKey(widget.item),
        padding: const EdgeInsets.all(Constants.baseContainerPadding),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withAlpha(204),
        onTap: () async =>
            await launchUrl(launchUri, mode: LaunchMode.inAppWebView),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgNetworkIcon(url: widget._imgUrl, size: Constants.svgIconSize),
          Padding(
            padding: const EdgeInsets.only(left: Constants.titleLeftPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: widget._textBoxDynamicWidth(context),
                  child: Text(widget.item.title,
                      style: const TextStyle(
                          fontSize: 18.84,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 60, 60, 60)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: Constants.urlBoxTopPadding),
                  child: FutureBuilder<FutureDesc>(
                      future: fetchDesc(launchUri.toString()),
                      builder: (context, snapshot) {
                        final FutureDesc futureDesc = snapshot.data!;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox.square(
                              dimension: Constants.captivePortalSvgIconSize,
                              child: SvgPicture.string(
                                  colorFilter: const ColorFilter.mode(
                                      Color.fromARGB(255, 100, 100, 100),
                                      BlendMode.srcIn),
                                  widget.captivePortalSvg),
                            ),
                            const SizedBox.square(
                              dimension: 5,
                            ),
                            SizedBox(
                              width: widget._textBoxDynamicWidth(context) -
                                  Constants.captivePortalSvgIconSize -
                                  Constants.captivePortalSvgIconMarginRight,
                              child: Tooltip(
                                triggerMode: TooltipTriggerMode.manual,
                                margin: const EdgeInsets.all(4),
                                message: futureDesc.msgDesc.isNotEmpty
                                    ? futureDesc.msgDesc
                                    : Uri.decodeComponent(launchUri.toString()),
                                waitDuration:
                                    const Duration(milliseconds: 1200),
                                exitDuration: const Duration(),
                                child: Text(
                                  futureDesc.desc.isNotEmpty
                                      ? futureDesc.desc
                                      : launchUri.host,
                                  style: const TextStyle(
                                      fontSize:
                                          Constants.captivePortalSvgIconSize,
                                      color: Color.fromARGB(255, 100, 100, 100),
                                      fontWeight: FontWeight.w500),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ],
            ),
          )
        ]));
  }
}
