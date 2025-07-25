import 'package:devfans/widget/devfans_circular_progress_bar.dart';
import 'package:devfans/widget/meyou_svg_picture.dart';
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
    return SizedBox.square(
      dimension: size,
      child: SvgPicture.network(
        url,
        errorBuilder: (context, error, stackTrace) => const MeyouSvgPicture(
          color: Colors.red,
        ),
        width: size,
        height: size,
        placeholderBuilder: (BuildContext context) => circularProgressIndicator,
      ),
    );
  }
}
