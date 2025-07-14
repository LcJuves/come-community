import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:devfans/widget/devfans_circular_progress_bar.dart';

class SvgNetworkIcon extends StatelessWidget {
  final String url;
  final double size;
  const SvgNetworkIcon({super.key, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    const circularProgressIndicator = Padding(
      padding: EdgeInsets.all(10),
      child: DevFansCircularProgressIndicator(
        strokeCap: StrokeCap.round,
        strokeWidth: 3,
        color: Color.fromARGB(127, 255, 255, 255),
        blendMode: BlendMode.dstOut,
      ),
    );
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.network(
        url,
        // semanticsLabel: 'A shark?!',
        width: size,
        height: size,
        placeholderBuilder: (BuildContext context) => circularProgressIndicator,
      ),
    );
  }
}
