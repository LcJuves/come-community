import 'package:flutter/material.dart';

import 'item.dart';
import 'svg_network_icon.dart';
import 'inkwell_container.dart';

const svgIconSize = 55.2;

class BaseContainer extends StatelessWidget {
  final Item item;
  final GestureTapCallback? onTap;
  const BaseContainer({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWellContainer(
        padding: const EdgeInsets.all(15),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(255, 255, 255, 0.565),
        onTap: onTap,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          SvgNetworkIcon(url: item.imgUrl, size: svgIconSize),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 60, 60, 60)),
                  textAlign: TextAlign.start,
                ),
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
