import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BorderRadiusGeometry,
        Clip,
        Color,
        Widget,
        BuildContext,
        BorderRadius,
        Colors,
        RoundedRectangleBorder,
        Directionality,
        ShapeBorderClipper,
        PhysicalShape;

class RoundedRectangleBorderPhysicalShape extends StatelessWidget {
  final BorderRadiusGeometry borderRadius;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.none].
  final Clip clipBehavior;

  /// The z-coordinate relative to the parent at which to place this physical
  /// object.
  ///
  /// The value is non-negative.
  final double elevation;

  /// The background color.
  final Color color;

  /// When elevation is non zero the color to use for the shadow color.
  final Color? shadowColor;

  final Widget? child;

  const RoundedRectangleBorderPhysicalShape(
      {super.key,
      this.borderRadius = BorderRadius.zero,
      this.clipBehavior = Clip.none,
      this.elevation = 0.0,
      this.color = Colors.transparent,
      this.shadowColor,
      this.child});

  @override
  Widget build(BuildContext context) {
    return PhysicalShape(
      clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          textDirection: Directionality.maybeOf(context)),
      clipBehavior: clipBehavior,
      elevation: elevation,
      color: color,
      shadowColor: shadowColor ?? Colors.grey.withAlpha(106),
      child: child,
    );
  }
}
