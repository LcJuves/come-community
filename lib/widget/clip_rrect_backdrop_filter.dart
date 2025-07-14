import 'dart:ui';

import 'package:flutter/material.dart';

class ClipRRrectBackdropFilter extends StatelessWidget {
  const ClipRRrectBackdropFilter(
      {super.key,
      this.child,
      this.borderRadius = BorderRadius.zero,
      this.clipper,
      this.elevation = 3.0,
      this.sigma = 5,
      this.decoration,
      this.width,
      this.height,
      this.margin});

  final Widget? child;

  final BorderRadius? borderRadius;

  final double elevation;

  final double sigma;

  final Decoration? decoration;

  final double? width;
  final double? height;

  /// If non-null, determines which clip to use.
  final CustomClipper<RRect>? clipper;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: PhysicalModel(
        borderRadius: borderRadius,
        elevation: elevation,
        color: Colors.transparent,
        child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.zero,
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
                child: child)),
      ),
    );
  }
}
