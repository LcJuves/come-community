import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart';

class SvgNetworkIcon extends StatelessWidget {
  final String url;
  final double size;
  const SvgNetworkIcon({super.key, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: ScalableImageWidget.fromSISource(
            onLoading: (p0) {
              return const Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Color.fromARGB(127, 255, 255, 255),
                ),
              );
            },
            si: ScalableImageSource.fromSvgHttpUrl(Uri.parse(url))));
  }
}
