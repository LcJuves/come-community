import 'package:come/widget/come_circular_progress_bar.dart'
    show ComeCircularProgressIndicator;
import 'package:come/widget/meyou_logo.dart' show MeyouLogo;
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widgets.dart'
    show
        StatefulWidget,
        Padding,
        State,
        Widget,
        EdgeInsets,
        BuildContext,
        StrokeCap,
        Color,
        BlendMode,
        SizedBox,
        BoxFit;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:flutter_svg_image/flutter_svg_image.dart'
    show CachedNetworkSvgSource;
import 'package:jovial_svg/jovial_svg.dart'
    show ScalableImageWidget, ScalableImageCache;
import 'package:vector_graphics/vector_graphics_compat.dart'
    show NetworkBytesLoader;

class VectorImageIcon extends StatefulWidget {
  final String url;
  final double size;
  final bool useVecIcon;
  final int cacheSize;
  const VectorImageIcon({
    super.key,
    required this.url,
    required this.size,
    required this.useVecIcon,
    required this.cacheSize,
  });

  @override
  State<VectorImageIcon> createState() => _VectorImageIconState();
}

class _VectorImageIconState extends State<VectorImageIcon> {
  late final Widget _image;

  @override
  void initState() {
    super.initState();
    final circularProgressIndicator = Padding(
      key: widget.key,
      padding: const EdgeInsets.all(10),
      child: const ComeCircularProgressIndicator(
        strokeCap: StrokeCap.round,
        strokeWidth: 3.3,
        color: Color.fromARGB(127, 255, 255, 255),
        blendMode: BlendMode.srcOut,
      ),
    );
    final errorMeyouLogo = MeyouLogo(key: widget.key, color: Colors.red);
    final vectorImageHttpUrl = Uri.parse(widget.useVecIcon
        ? Uri.decodeComponent("${widget.url.replaceAll("svg/", "vec/")}.vec")
        : widget.url);
    if (vectorImageHttpUrl.path.toLowerCase().contains("/meyou")) {
      _image = MeyouLogo(key: widget.key);
      return;
    }
    // if (vectorImageHttpUrl.path.toLowerCase().contains("/alipay")) {
    //   _image = const AlipayQRCodeIcon(/* blendMode: BlendMode.difference */);
    //   return;
    // }

    _image = !widget.useVecIcon
        ? ScalableImageWidget.fromSISource(
            onLoading: (context) => circularProgressIndicator,
            onError: (context) => errorMeyouLogo,
            cache: ScalableImageCache(size: widget.cacheSize),
            fit: BoxFit.contain,
            si: CachedNetworkSvgSource(
              vectorImageHttpUrl.toString(),
            ),
          )
        : SvgPicture(
            NetworkBytesLoader(
                // httpClient: extendedSpecHttpClient(),
                vectorImageHttpUrl),
            width: widget.size,
            height: widget.size,
            placeholderBuilder: (BuildContext context) =>
                circularProgressIndicator,
            errorBuilder: (context, error, stackTrace) => errorMeyouLogo,
          );

    // SvgWebImage.initWebView();
    // _image = Image(
    //   fit: BoxFit.contain,
    //   image: SvgWebImage.cachedNetwork(
    //     vectorImageHttpUrl.toString(),
    //     cacheSvg: true,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      key: widget.key,
      dimension: widget.size,
      child: _image,
    );
  }
}
