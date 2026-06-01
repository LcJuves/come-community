import 'package:come/widget/come_circular_progress_bar.dart'
    show ComeCircularProgressIndicator;
import 'package:come/widget/meyou_logo.dart' show MeyouLogo;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        State,
        Widget,
        EdgeInsets,
        BuildContext,
        StrokeCap,
        Color,
        BlendMode,
        Padding,
        Colors,
        SizedBox;
import 'package:jovial_svg/jovial_svg.dart'
    show ScalableImageWidget, ScalableImageCache, ScalableImageSource;

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
    final errorMeyouLogo = MeyouLogo(key: widget.key, color: Colors.red);

    final vectorImageHttpUrl = widget.useVecIcon
        ? Uri.parse(
            Uri.decodeComponent("${widget.url.replaceAll("svg/", "vec/")}.vec"),
          )
        : Uri.parse(widget.url);

    _image = SizedBox(
      width: widget.size,
      height: widget.size,
      child: ScalableImageWidget.fromSISource(
        onLoading: (context) => circularProgressIndicator,
        onError: (context) => errorMeyouLogo,
        cache: ScalableImageCache(size: widget.cacheSize),
        si: ScalableImageSource.fromSvgHttpUrl(vectorImageHttpUrl),
      ),
    );
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
