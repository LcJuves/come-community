import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgNetworkIcon extends StatelessWidget {
  final String url;
  final double size;
  const SvgNetworkIcon({super.key, required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.network(
        url,
        // semanticsLabel: 'A shark?!',
        width: size,
        height: size,
        placeholderBuilder: (BuildContext context) => const Padding(
          padding: EdgeInsets.all(10),
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: Color.fromARGB(127, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
