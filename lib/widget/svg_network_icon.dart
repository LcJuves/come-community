import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/devfans_circular_progress_bar.dart';
import 'package:devfans/widget/meyou_svg_picture.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgNetworkIcon extends StatelessWidget {
  final String url;
  final double size;
  const SvgNetworkIcon({super.key, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    if (url.toLowerCase().contains("meyou.svg")) {
      return const MeyouSvgPicture();
    }

    const circularProgressIndicator = Padding(
      padding: EdgeInsets.all(10),
      child: DevFansCircularProgressIndicator(
        strokeCap: StrokeCap.round,
        strokeWidth: 3.3,
        color: Color.fromARGB(127, 255, 255, 255),
        blendMode: BlendMode.srcOut,
      ),
    );

    const errorWidget = MeyouSvgPicture(
      color: Colors.red,
    );

    Widget image = SvgPicture.network(
      url,
      width: size,
      height: size,
      placeholderBuilder: (BuildContext context) => circularProgressIndicator,
      errorBuilder: (context, error, stackTrace) => errorWidget,
    );

    if (kIsWeb && !isRunOnSafariWebBrowser()) {
      image = CachedNetworkImage(
        imageUrl: url,
        width: size,
        height: size,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            circularProgressIndicator,
        errorWidget: (context, url, error) => errorWidget,
      );
    }

    return SizedBox.square(
      dimension: size,
      child: image,
    );
  }
}
