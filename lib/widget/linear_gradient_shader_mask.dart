import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Alignment,
        Color,
        AlignmentGeometry,
        BlendMode,
        Widget,
        BuildContext,
        Rect,
        Colors,
        LinearGradient,
        ShaderMask;

class LinearGradientShaderMask extends StatelessWidget {
  const LinearGradientShaderMask({
    super.key,
    this.colors,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.blendMode = BlendMode.modulate,
    this.child,
  });

  /// The colors the gradient should obtain at each of the stops.
  ///
  /// If [stops] is non-null, this list must have the same length as [stops].
  ///
  /// This list must have at least two colors in it (otherwise, it's not a
  /// gradient!).
  final List<Color>? colors;

  /// The offset at which stop 0.0 of the gradient is placed.
  ///
  /// If this is an [Alignment], then it is expressed as a vector from
  /// coordinate (0.0, 0.0), in a coordinate space that maps the center of the
  /// paint box at (0.0, 0.0) and the bottom right at (1.0, 1.0).
  ///
  /// For example, a begin offset of (-1.0, 0.0) is half way down the
  /// left side of the box.
  ///
  /// It can also be an [AlignmentDirectional], where the start is the
  /// left in left-to-right contexts and the right in right-to-left contexts. If
  /// a text-direction-dependent value is provided here, then the [createShader]
  /// method will need to be given a [TextDirection].
  final AlignmentGeometry begin;

  /// The offset at which stop 1.0 of the gradient is placed.
  ///
  /// If this is an [Alignment], then it is expressed as a vector from
  /// coordinate (0.0, 0.0), in a coordinate space that maps the center of the
  /// paint box at (0.0, 0.0) and the bottom right at (1.0, 1.0).
  ///
  /// For example, a begin offset of (1.0, 0.0) is half way down the
  /// right side of the box.
  ///
  /// It can also be an [AlignmentDirectional], where the start is the left in
  /// left-to-right contexts and the right in right-to-left contexts. If a
  /// text-direction-dependent value is provided here, then the [createShader]
  /// method will need to be given a [TextDirection].
  final AlignmentGeometry end;

  /// The [BlendMode] to use when applying the shader to the child.
  ///
  /// The default, [BlendMode.modulate], is useful for applying an alpha blend
  /// to the child. Other blend modes can be used to create other effects.
  final BlendMode blendMode;

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: begin,
          end: end,
          colors: colors ??
              [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
        ).createShader(bounds);
      },
      blendMode: blendMode,
      child: child,
    );
  }
}
