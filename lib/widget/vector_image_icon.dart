import 'package:cached_network_image/cached_network_image.dart';
import 'package:come/extended_http_client.dart';
import 'package:come/webspec.dart';
import 'package:come/widget/come_circular_progress_bar.dart';
import 'package:come/widget/meyou_logo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class VectorImageIcon extends StatefulWidget {
  final String url;
  final double size;
  final bool useVecIcon;
  final int cacheSize;
  const VectorImageIcon(
      {super.key,
      required this.url,
      required this.size,
      required this.useVecIcon,
      required this.cacheSize});

  @override
  State<VectorImageIcon> createState() => _VectorImageIconState();
}

class _VectorImageIconState extends State<VectorImageIcon> {
  Widget? _image;

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
    final errorMeyouLogo = MeyouLogo(
      key: widget.key,
      color: Colors.red,
    );

    _image = widget.useVecIcon
        ? SvgPicture(
            NetworkBytesLoader(
                httpClient: extendedSpecHttpClient(),
                Uri.parse(Uri.decodeComponent(
                    "${widget.url.replaceAll("svg/", "vec/")}.vec"))),
            width: widget.size,
            height: widget.size,
            placeholderBuilder: (BuildContext context) =>
                circularProgressIndicator,
            errorBuilder: (context, error, stackTrace) => errorMeyouLogo,
          )
        : SvgPicture.network(
            widget.url,
            width: widget.size,
            height: widget.size,
            placeholderBuilder: (BuildContext context) =>
                circularProgressIndicator,
            errorBuilder: (context, error, stackTrace) => errorMeyouLogo,
          );

    if (kIsWeb && !isRunOnSafariWebBrowser()) {
      _image = CachedNetworkImage(
        imageUrl: widget.url,
        width: widget.size,
        height: widget.size,
        fadeInCurve: Curves.fastEaseInToSlowEaseOut,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            circularProgressIndicator,
        errorWidget: (context, url, error) => errorMeyouLogo,
      );
    }

    /* _image = SizedBox(
      width: widget.size,
      height: widget.size,
      child: ScalableImageWidget.fromSISource(
          onLoading: (context) => circularProgressIndicator,
          onError: (context) => circularProgressIndicator,
          cache: ScalableImageCache(size: widget.cacheSize),
          si: ScalableImageSource.fromSvgHttpUrl(Uri.parse(widget.url))),
    ); */
  }

  @override
  Widget build(BuildContext context) {
    if (widget.url.toLowerCase().contains("meyou.svg")) {
      return const MeyouLogo();
    }

    return SizedBox.square(
      key: widget.key,
      dimension: widget.size,
      child: _image,
    );
  }
}
