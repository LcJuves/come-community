import 'package:flutter/material.dart';
import 'package:protobuffers/items.pb.dart';

import 'svg_network_icon.dart';
import 'inkwell_container.dart';

const svgIconSize = 55.2;

// ignore: must_be_immutable
class BaseContainer extends StatelessWidget {
  final String _commonUrlPrefix = "https://webfrontend.lcjuves.com/assets/svg";
  late String _imgUrl;
  final Item item;
  final GestureTapCallback? onTap;
  BaseContainer({super.key, required this.item, this.onTap}) {
    _imgUrl = item.imgUrl;
    if (_imgUrl.startsWith('/')) {
      _imgUrl = _commonUrlPrefix + _imgUrl;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWellContainer(
        padding: const EdgeInsets.all(15),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.8),
        onTap: onTap,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgNetworkIcon(url: _imgUrl, size: svgIconSize),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 60, 60, 60)),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: SizedBox(
                    width: 270,
                    child: Text(
                      item.url,
                      style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 100, 100, 100),
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
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
