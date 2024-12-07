import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';

import 'constants.dart';
import 'inkwell_container.dart';
import 'svg_network_icon.dart';

// ignore: must_be_immutable
class BaseContainer extends StatelessWidget {
  final String _commonUrlPrefix = "https://web.lcjuves.com/assets/svg";
  late String _imgUrl;
  final Item item;
  final GestureTapCallback? onTap;
  BaseContainer({super.key, required this.item, this.onTap}) {
    _imgUrl = item.imgUrl;
    if (_imgUrl.startsWith('/')) {
      _imgUrl = _commonUrlPrefix + _imgUrl;
    }
  }

  double _textBoxDynamicWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final usableWidth = screenWidth -
        (edgePadding * 2) -
        (baseContainerPadding * 2) -
        svgIconSize -
        titleLeftPadding;
    return usableWidth < urlBoxWidth ? usableWidth : urlBoxWidth;
  }

  @override
  Widget build(BuildContext context) {
    return InkWellContainer(
        padding: const EdgeInsets.all(baseContainerPadding),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.8),
        onTap: onTap,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgNetworkIcon(url: _imgUrl, size: svgIconSize),
          Padding(
            padding: const EdgeInsets.only(left: titleLeftPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: _textBoxDynamicWidth(context),
                  child: Text(item.title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 60, 60, 60)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: urlBoxTopPadding),
                  child: SizedBox(
                    width: _textBoxDynamicWidth(context),
                    child: Text(
                      item.url,
                      style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 100, 100, 100),
                          fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
