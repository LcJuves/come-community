import 'dart:ui';

import 'package:come/widget/rounded_rectangle_border_physical_shape.dart';
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
      this.margin,
      this.color,
      this.shadowColor});

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

  /// The background color.
  final Color? color;

  /// The shadow color.
  final Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: RoundedRectangleBorderPhysicalShape(
          borderRadius: borderRadius ?? BorderRadius.zero,
          elevation: elevation,
          color: color ?? Colors.transparent,
          shadowColor: shadowColor ?? Colors.grey.withAlpha(169),
          child: ClipRRect(
            borderRadius: borderRadius ?? BorderRadius.zero,
            child: BackdropFilter.grouped(
                filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
                child: child),
          )),
    );
  }
}
