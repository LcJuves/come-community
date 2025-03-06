import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';
import 'inkwell_container.dart';
import 'svg_network_icon.dart';

// ignore: must_be_immutable
class BaseContainer extends StatelessWidget {
  final String _commonUrlPrefix = "https://web.lcjuves.com/assets/svg";
  late String _imgUrl;
  final Item item;
  BaseContainer({super.key, required this.item}) {
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

  @override
  Widget build(BuildContext context) {
    return InkWellContainer(
        padding: const EdgeInsets.all(Constants.baseContainerPadding),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withAlpha(204),
        onTap: () async =>
            await launchUrl(Uri.parse(item.cnurl), mode: LaunchMode.inAppWebView),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgNetworkIcon(url: _imgUrl, size: Constants.svgIconSize),
          Padding(
            padding: const EdgeInsets.only(left: Constants.titleLeftPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: _textBoxDynamicWidth(context),
                  child: Text(item.title,
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
                  child: SizedBox(
                    width: _textBoxDynamicWidth(context),
                    child: Tooltip(
                      triggerMode: TooltipTriggerMode.manual,
                      margin: const EdgeInsets.all(4),
                      message: item.cnurl,
                      waitDuration: const Duration(milliseconds: 1200),
                      exitDuration: const Duration(),
                      child: Text(
                        item.cnurl,
                        style: const TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontWeight: FontWeight.w500),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
