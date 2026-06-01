import 'package:come/constants.dart';
import 'package:flutter/material.dart';
import 'package:jovial_svg/jovial_svg.dart'
    show ScalableImageWidget, ScalableImage;

class AlipayIcon extends StatelessWidget {
  final String _alipayIconSvg = """
<svg viewBox="0 0 25.152 25.368" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd" fill="#1677FF"><path d="M20.709 15.928c3.622 1.223 4.444 1.29 4.444 1.29V4.063C25.153 1.82 23.35 0 21.125 0H4.03C1.803 0 0 1.82 0 4.064v17.24c0 2.244 1.803 4.064 4.03 4.064h17.095c2.226 0 4.028-1.82 4.028-4.064v-.166s-6.543-2.75-9.846-4.353c-2.216 2.75-5.075 4.419-8.042 4.419-5.018 0-6.722-4.429-4.346-7.345.518-.636 1.4-1.242 2.767-1.583 2.14-.53 5.546.331 8.737 1.393a17.757 17.757 0 001.417-3.491H6.004V9.172h5.072v-1.8H4.933V6.365h6.143v-2.57s0-.432.434-.432h2.48v3.003h6.073v1.005h-6.074v1.8h4.958a20.562 20.562 0 01-2.1 5.348c1.505.55 2.856 1.07 3.862 1.409"/><path d="M6.113 13.78c-.628.064-1.807.344-2.453.919-1.934 1.7-.777 4.809 3.137 4.809 2.274 0 4.547-1.467 6.332-3.815-2.54-1.25-4.691-2.144-7.016-1.913"/></g></svg>
""";

  final double width;
  final double height;

  const AlipayIcon(
      {super.key,
      this.width = Constants.svgIconSize,
      this.height = Constants.svgIconSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ScalableImageWidget(
          si: ScalableImage.fromSvgString(_alipayIconSvg),
        ));
  }
}
