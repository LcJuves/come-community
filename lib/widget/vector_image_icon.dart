import 'package:cached_network_image/cached_network_image.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/devfans_circular_progress_bar.dart';
import 'package:devfans/widget/meyou_logo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class VectorImageIcon extends StatefulWidget {
  final String url;
  final double size;
  const VectorImageIcon({super.key, required this.url, required this.size});

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
      child: const DevFansCircularProgressIndicator(
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

    _image = SvgPicture(
      AssetBytesLoader(
          "res/vec/${Uri.decodeComponent(Uri.decodeComponent(widget.url)).split("/").last}.vec"),
      width: widget.size,
      height: widget.size,
      renderingStrategy: RenderingStrategy.raster,
      placeholderBuilder: (BuildContext context) => circularProgressIndicator,
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
