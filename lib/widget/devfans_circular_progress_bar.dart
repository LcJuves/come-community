import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum _ActivityIndicatorType { material, adaptive }

const int _kIndeterminateCircularDuration = 1333 * 2222;

/// A Material Design circular progress indicator, which spins to indicate that
/// the application is busy.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=O-rhXZLtpv0}
///
/// A widget that shows progress along a circle. There are two kinds of circular
/// progress indicators:
///
///  * _Determinate_. Determinate progress indicators have a specific value at
///    each point in time, and the value should increase monotonically from 0.0
///    to 1.0, at which time the indicator is complete. To create a determinate
///    progress indicator, use a non-null [value] between 0.0 and 1.0.
///  * _Indeterminate_. Indeterminate progress indicators do not have a specific
///    value at each point in time and instead indicate that progress is being
///    made without indicating how much progress remains. To create an
///    indeterminate progress indicator, use a null [value].
///
/// The indicator arc is displayed with [valueColor], an animated value. To
/// specify a constant color use: `AlwaysStoppedAnimation<Color>(color)`.
///
/// {@tool dartpad}
/// This example showcases determinate and indeterminate [DevFansCircularProgressIndicator]s.
/// The [DevFansCircularProgressIndicator]s will use the ![updated Material 3 Design appearance](https://m3.material.io/components/progress-indicators/overview)
/// when setting the [DevFansCircularProgressIndicator.year2023] flag to false.
///
/// ** See code in examples/api/lib/material/progress_indicator/circular_progress_indicator.0.dart **
/// {@end-tool}
///
/// {@tool dartpad}
/// This sample shows the creation of a [DevFansCircularProgressIndicator] with a changing value.
/// When toggling the switch, [DevFansCircularProgressIndicator] uses a determinate value.
/// As described in: https://m3.material.io/components/progress-indicators/overview
///
/// ** See code in examples/api/lib/material/progress_indicator/circular_progress_indicator.1.dart **
/// {@end-tool}
///
/// See also:
///
///  * [LinearProgressIndicator], which displays progress along a line.
///  * [RefreshIndicator], which automatically displays a [DevFansCircularProgressIndicator]
///    when the underlying vertical scrollable is overscrolled.
///  * <https://material.io/design/components/progress-indicators.html#circular-progress-indicators>
class DevFansCircularProgressIndicator extends ProgressIndicator {
  /// Creates a circular progress indicator.
  ///
  /// {@macro flutter.material.ProgressIndicator.ProgressIndicator}
  const DevFansCircularProgressIndicator({
    super.key,
    super.value,
    super.backgroundColor,
    super.color,
    super.valueColor,
    this.strokeWidth,
    this.strokeAlign,
    super.semanticsLabel,
    super.semanticsValue,
    this.strokeCap,
    this.constraints,
    this.trackGap,
    @Deprecated(
      'Set this flag to false to opt into the 2024 progress indicator appearance. Defaults to true. '
      'In the future, this flag will default to false. Use ProgressIndicatorThemeData to customize individual properties. '
      'This feature was deprecated after v3.27.0-0.1.pre.',
    )
    this.year2023,
    this.blendMode,
    this.padding,
  }) : _indicatorType = _ActivityIndicatorType.material;

  /// Creates an adaptive progress indicator that is a
  /// [CupertinoActivityIndicator] on [TargetPlatform.iOS] &
  /// [TargetPlatform.macOS] and a [DevFansCircularProgressIndicator] in material
  /// theme/non-Apple platforms.
  ///
  /// The [valueColor], [strokeWidth], [strokeAlign], [strokeCap],
  /// [semanticsLabel], [semanticsValue], [trackGap], [year2023] will be
  /// ignored on iOS & macOS.
  ///
  /// {@macro flutter.material.ProgressIndicator.ProgressIndicator}
  const DevFansCircularProgressIndicator.adaptive({
    super.key,
    super.value,
    super.backgroundColor,
    super.valueColor,
    this.strokeWidth = 4.0,
    super.semanticsLabel,
    super.semanticsValue,
    this.strokeCap,
    this.strokeAlign,
    this.constraints,
    this.trackGap,
    @Deprecated(
      'Set this flag to false to opt into the 2024 progress indicator appearance. Defaults to true. '
      'In the future, this flag will default to false. Use ProgressIndicatorThemeData to customize individual properties. '
      'This feature was deprecated after v3.27.0-0.2.pre.',
    )
    this.year2023,
    this.blendMode,
    this.padding,
  }) : _indicatorType = _ActivityIndicatorType.adaptive;

  final _ActivityIndicatorType _indicatorType;

  /// {@template flutter.material.DevFansCircularProgressIndicator.trackColor}
  /// Color of the circular track being filled by the circular indicator.
  ///
  /// If [DevFansCircularProgressIndicator.backgroundColor] is null then the
  /// ambient [ProgressIndicatorThemeData.circularTrackColor] will be used.
  /// If that is null, then the track will not be painted.
  /// {@endtemplate}
  @override
  Color? get backgroundColor => super.backgroundColor;

  /// The width of the line used to draw the circle.
  final double? strokeWidth;

  /// The relative position of the stroke on a [DevFansCircularProgressIndicator].
  ///
  /// Values typically range from -1.0 ([strokeAlignInside], inside stroke)
  /// to 1.0 ([strokeAlignOutside], outside stroke),
  /// without any bound constraints (e.g., a value of -2.0 is not typical, but allowed).
  /// A value of 0 ([strokeAlignCenter]) will center the border
  /// on the edge of the widget.
  ///
  /// If [year2023] is true, then the default value is [strokeAlignCenter].
  /// Otherwise, the default value is [strokeAlignInside].
  final double? strokeAlign;

  /// The progress indicator's line ending.
  ///
  /// This determines the shape of the stroke ends of the progress indicator.
  /// By default, [strokeCap] is null.
  /// When [value] is null (indeterminate), the stroke ends are set to
  /// [StrokeCap.square]. When [value] is not null, the stroke
  /// ends are set to [StrokeCap.butt].
  ///
  /// Setting [strokeCap] to [StrokeCap.round] will result in a rounded end.
  /// Setting [strokeCap] to [StrokeCap.butt] with [value] == null will result
  /// in a slightly different indeterminate animation; the indicator completely
  /// disappears and reappears on its minimum value.
  /// Setting [strokeCap] to [StrokeCap.square] with [value] != null will
  /// result in a different display of [value]. The indicator will start
  /// drawing from slightly less than the start, and end slightly after
  /// the end. This will produce an alternative result, as the
  /// default behavior, for example, that a [value] of 0.5 starts at 90 degrees
  /// and ends at 270 degrees. With [StrokeCap.square], it could start 85
  /// degrees and end at 275 degrees.
  final StrokeCap? strokeCap;

  /// Defines minimum and maximum sizes for a [DevFansCircularProgressIndicator].
  ///
  /// If null, then the [ProgressIndicatorThemeData.constraints] will be used.
  /// Otherwise, defaults to a minimum width and height of 36 pixels.
  final BoxConstraints? constraints;

  /// The gap between the active indicator and the background track.
  ///
  /// If [year2023] is false or [ThemeData.useMaterial3] is false, then no track
  /// gap will be drawn.
  ///
  /// Set [trackGap] to 0 to hide the track gap.
  ///
  /// If null, then the [ProgressIndicatorThemeData.trackGap] will be used.
  /// If that is null, then defaults to 4.
  final double? trackGap;

  /// When true, the [DevFansCircularProgressIndicator] will use the 2023 Material Design 3
  /// appearance.
  ///
  /// If null, then the [ProgressIndicatorThemeData.year2023] will be used.
  /// If that is null, then defaults to true.
  ///
  /// If this is set to false, the [DevFansCircularProgressIndicator] will use the
  /// latest Material Design 3 appearance, which was introduced in December 2023.
  ///
  /// If [ThemeData.useMaterial3] is false, then this property is ignored.
  @Deprecated(
    'Set this flag to false to opt into the 2024 progress indicator appearance. Defaults to true. '
    'In the future, this flag will default to false. Use ProgressIndicatorThemeData to customize individual properties. '
    'This feature was deprecated after v3.27.0-0.2.pre.',
  )
  final bool? year2023;

  final BlendMode? blendMode;

  /// The padding around the indicator track.
  ///
  /// If null, then the [ProgressIndicatorThemeData.circularTrackPadding] will be
  /// used. If that is null and [year2023] is false, then defaults to `EdgeInsets.all(4.0)`
  /// padding. Otherwise, defaults to zero padding.
  final EdgeInsetsGeometry? padding;

  /// The indicator stroke is drawn fully inside of the indicator path.
  ///
  /// This is a constant for use with [strokeAlign].
  static const double strokeAlignInside = -1.0;

  /// The indicator stroke is drawn on the center of the indicator path,
  /// with half of the [strokeWidth] on the inside, and the other half
  /// on the outside of the path.
  ///
  /// This is a constant for use with [strokeAlign].
  ///
  /// This is the default value for [strokeAlign].
  static const double strokeAlignCenter = 0.0;

  /// The indicator stroke is drawn on the outside of the indicator path.
  ///
  /// This is a constant for use with [strokeAlign].
  static const double strokeAlignOutside = 1.0;

  Color _getValueColor(BuildContext context, {Color? defaultColor}) {
    return valueColor?.value ??
        color ??
        ProgressIndicatorTheme.of(context).color ??
        defaultColor ??
        Theme.of(context).colorScheme.primary;
  }

  Widget _buildSemanticsWrapper(
      {required BuildContext context, required Widget child}) {
    String? expandedSemanticsValue = semanticsValue;
    if (value != null) {
      expandedSemanticsValue ??= '${(value! * 100).round()}%';
    }
    return Semantics(
        label: semanticsLabel, value: expandedSemanticsValue, child: child);
  }

  @override
  State<DevFansCircularProgressIndicator> createState() =>
      _DevFansCircularProgressIndicatorState();
}

class _DevFansCircularProgressIndicatorState
    extends State<DevFansCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  static const int _pathCount = _kIndeterminateCircularDuration ~/ 1333;
  static const int _rotationCount = _kIndeterminateCircularDuration ~/ 2222;

  static final Animatable<double> _strokeHeadTween = CurveTween(
    curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn),
  ).chain(CurveTween(curve: const SawTooth(_pathCount)));
  static final Animatable<double> _strokeTailTween = CurveTween(
    curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
  ).chain(CurveTween(curve: const SawTooth(_pathCount)));
  static final Animatable<double> _offsetTween =
      CurveTween(curve: const SawTooth(_pathCount));
  static final Animatable<double> _rotationTween = CurveTween(
    curve: const SawTooth(_rotationCount),
  );

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: _kIndeterminateCircularDuration),
      vsync: this,
    );
    if (widget.value == null) {
      _controller.repeat();
    }
  }

  @override
  void didUpdateWidget(DevFansCircularProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value == null && !_controller.isAnimating) {
      _controller.repeat();
    } else if (widget.value != null && _controller.isAnimating) {
      _controller.stop();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildCupertinoIndicator(BuildContext context) {
    final Color? tickColor = widget.backgroundColor;
    final double? value = widget.value;
    if (value == null) {
      return CupertinoActivityIndicator(key: widget.key, color: tickColor);
    }
    return CupertinoActivityIndicator.partiallyRevealed(
      key: widget.key,
      color: tickColor,
      progress: value,
    );
  }

  Widget _buildMaterialIndicator(
    BuildContext context,
    double headValue,
    double tailValue,
    double offsetValue,
    double rotationValue,
  ) {
    final ProgressIndicatorThemeData indicatorTheme =
        ProgressIndicatorTheme.of(context);
    final bool year2023 = widget.year2023 ?? indicatorTheme.year2023 ?? true;
    final ProgressIndicatorThemeData defaults =
        switch (Theme.of(context).useMaterial3) {
      true => year2023
          ? _DevFansCircularProgressIndicatorDefaultsM3Year2023(
              context,
              indeterminate: widget.value == null,
            )
          : _DevFansCircularProgressIndicatorDefaultsM3(context,
              indeterminate: widget.value == null),
      false => _DevFansCircularProgressIndicatorDefaultsM2(context,
          indeterminate: widget.value == null),
    };
    final Color? trackColor = widget.backgroundColor ??
        indicatorTheme.circularTrackColor ??
        defaults.circularTrackColor;
    final double strokeWidth = widget.strokeWidth ??
        indicatorTheme.strokeWidth ??
        defaults.strokeWidth!;
    final double strokeAlign = widget.strokeAlign ??
        indicatorTheme.strokeAlign ??
        defaults.strokeAlign!;
    final StrokeCap? strokeCap = widget.strokeCap ?? indicatorTheme.strokeCap;
    final BoxConstraints constraints = widget.constraints ??
        indicatorTheme.constraints ??
        defaults.constraints!;
    final double? trackGap = year2023
        ? null
        : widget.trackGap ?? indicatorTheme.trackGap ?? defaults.trackGap;
    final EdgeInsetsGeometry? effectivePadding = widget.padding ??
        indicatorTheme.circularTrackPadding ??
        defaults.circularTrackPadding;

    Widget result = ConstrainedBox(
      constraints: constraints,
      child: CustomPaint(
        painter: _DevFansCircularProgressIndicatorPainter(
          trackColor: trackColor,
          valueColor:
              widget._getValueColor(context, defaultColor: defaults.color),
          value: widget.value, // may be null
          headValue:
              headValue, // remaining arguments are ignored if widget.value is not null
          tailValue: tailValue,
          offsetValue: offsetValue,
          rotationValue: rotationValue,
          strokeWidth: strokeWidth,
          strokeAlign: strokeAlign,
          strokeCap: strokeCap,
          trackGap: trackGap,
          year2023: year2023,
          blendMode: widget.blendMode,
        ),
      ),
    );

    if (effectivePadding != null) {
      result = Padding(padding: effectivePadding, child: result);
    }

    return widget._buildSemanticsWrapper(context: context, child: result);
  }

  Widget _buildAnimation() {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget? child) {
        return _buildMaterialIndicator(
          context,
          _strokeHeadTween.evaluate(_controller),
          _strokeTailTween.evaluate(_controller),
          _offsetTween.evaluate(_controller),
          _rotationTween.evaluate(_controller),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (widget._indicatorType) {
      case _ActivityIndicatorType.material:
        if (widget.value != null) {
          return _buildMaterialIndicator(context, 0.0, 0.0, 0, 0.0);
        }
        return _buildAnimation();
      case _ActivityIndicatorType.adaptive:
        final ThemeData theme = Theme.of(context);
        switch (theme.platform) {
          case TargetPlatform.iOS:
          case TargetPlatform.macOS:
            return _buildCupertinoIndicator(context);
          case TargetPlatform.android:
          case TargetPlatform.fuchsia:
          case TargetPlatform.linux:
          case TargetPlatform.windows:
            if (widget.value != null) {
              return _buildMaterialIndicator(context, 0.0, 0.0, 0, 0.0);
            }
            return _buildAnimation();
        }
    }
  }
}

class _DevFansCircularProgressIndicatorDefaultsM3Year2023
    extends ProgressIndicatorThemeData {
  _DevFansCircularProgressIndicatorDefaultsM3Year2023(this.context,
      {required this.indeterminate});

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;
  final bool indeterminate;

  @override
  Color get color => _colors.primary;

  @override
  double get strokeWidth => 4.0;

  @override
  double? get strokeAlign => DevFansCircularProgressIndicator.strokeAlignCenter;

  @override
  BoxConstraints get constraints =>
      const BoxConstraints(minWidth: 36.0, minHeight: 36.0);
}

// BEGIN GENERATED TOKEN PROPERTIES - ProgressIndicator

// Do not edit by hand. The code between the "BEGIN GENERATED" and
// "END GENERATED" comments are generated from data in the Material
// Design token database by the script:
//   dev/tools/gen_defaults/bin/gen_defaults.dart.

// dart format off
class _DevFansCircularProgressIndicatorDefaultsM3
    extends ProgressIndicatorThemeData {
  _DevFansCircularProgressIndicatorDefaultsM3(this.context,
      {required this.indeterminate});

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;
  final bool indeterminate;

  @override
  Color get color => _colors.primary;

  @override
  Color? get circularTrackColor =>
      indeterminate ? null : _colors.secondaryContainer;

  @override
  double get strokeWidth => 4.0;

  @override
  double? get strokeAlign => DevFansCircularProgressIndicator.strokeAlignInside;

  @override
  BoxConstraints get constraints => const BoxConstraints(
        minWidth: 40.0,
        minHeight: 40.0,
      );

  @override
  double? get trackGap => 4.0;

  @override
  EdgeInsetsGeometry? get circularTrackPadding => const EdgeInsets.all(4.0);
}

// Hand coded defaults based on Material Design 2.
class _DevFansCircularProgressIndicatorDefaultsM2
    extends ProgressIndicatorThemeData {
  _DevFansCircularProgressIndicatorDefaultsM2(this.context,
      {required this.indeterminate});

  final BuildContext context;
  late final ColorScheme _colors = Theme.of(context).colorScheme;
  final bool indeterminate;

  @override
  Color get color => _colors.primary;

  @override
  double? get strokeWidth => 4.0;

  @override
  double? get strokeAlign => DevFansCircularProgressIndicator.strokeAlignCenter;

  @override
  BoxConstraints get constraints =>
      const BoxConstraints(minWidth: 36.0, minHeight: 36.0);
}

class _DevFansCircularProgressIndicatorPainter extends CustomPainter {
  _DevFansCircularProgressIndicatorPainter({
    this.trackColor,
    required this.valueColor,
    required this.value,
    required this.headValue,
    required this.tailValue,
    required this.offsetValue,
    required this.rotationValue,
    required this.strokeWidth,
    required this.strokeAlign,
    this.blendMode,
    this.strokeCap,
    this.trackGap,
    this.year2023 = true,
  })  : arcStart = value != null
            ? _startAngle
            : _startAngle +
                tailValue * 3 / 2 * math.pi +
                rotationValue * math.pi * 2.0 +
                offsetValue * 0.5 * math.pi,
        arcSweep = value != null
            ? clampDouble(value, 0.0, 1.0) * _sweep
            : math.max(
                headValue * 3 / 2 * math.pi - tailValue * 3 / 2 * math.pi,
                _epsilon);

  final Color? trackColor;
  final Color valueColor;
  final BlendMode? blendMode;
  final double? value;
  final double headValue;
  final double tailValue;
  final double offsetValue;
  final double rotationValue;
  final double strokeWidth;
  final double strokeAlign;
  final double arcStart;
  final double arcSweep;
  final StrokeCap? strokeCap;
  final double? trackGap;
  final bool year2023;

  static const double _twoPi = math.pi * 2.0;
  static const double _epsilon = .001;
  // Canvas.drawArc(r, 0, 2*PI) doesn't draw anything, so just get close.
  static const double _sweep = _twoPi - _epsilon;
  static const double _startAngle = -math.pi / 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = valueColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Use the negative operator as intended to keep the exposed constant value
    // as users are already familiar with.
    final double strokeOffset = strokeWidth / 2 * -strokeAlign;
    final Offset arcBaseOffset = Offset(strokeOffset, strokeOffset);
    final Size arcActualSize =
        Size(size.width - strokeOffset * 2, size.height - strokeOffset * 2);
    final bool hasGap = trackGap != null && trackGap! > 0;

    if (trackColor != null) {
      final Paint backgroundPaint = Paint()
        ..color = trackColor!
        ..strokeWidth = strokeWidth
        ..strokeCap = strokeCap ?? StrokeCap.round
        ..style = PaintingStyle.stroke;
      // If hasGap is true, draw the background arc with a gap.
      if (hasGap && value != null && value! > _epsilon) {
        final double arcRadius = arcActualSize.shortestSide / 2;
        final double strokeRadius = strokeWidth / arcRadius;
        final double gapRadius = trackGap! / arcRadius;
        final double startGap = strokeRadius + gapRadius;
        final double endGap = value! < _epsilon ? startGap : startGap * 2;
        final double startSweep = (-math.pi / 2.0) + startGap;
        final double endSweep = math.max(
          0.0,
          _twoPi - clampDouble(value!, 0.0, 1.0) * _twoPi - endGap,
        );
        // Flip the canvas for the background arc.
        canvas.save();
        canvas.scale(-1, 1);
        canvas.translate(-size.width, 0);
        canvas.drawArc(arcBaseOffset & arcActualSize, startSweep, endSweep,
            false, backgroundPaint);
        // Restore the canvas to draw the foreground arc.
        canvas.restore();
      } else {
        canvas.drawArc(
            arcBaseOffset & arcActualSize, 0, _sweep, false, backgroundPaint);
      }
    }

    if (year2023) {
      if (value == null && strokeCap == null) {
        // Indeterminate
        paint.strokeCap = StrokeCap.square;
      } else {
        // Butt when determinate (value != null) && strokeCap == null;
        paint.strokeCap = strokeCap ?? StrokeCap.butt;
      }
    } else {
      paint.strokeCap = strokeCap ?? StrokeCap.round;
    }

    paint.blendMode = blendMode ?? BlendMode.srcIn;
    canvas.drawArc(
        arcBaseOffset & arcActualSize, arcStart, arcSweep, false, paint);
  }

  @override
  bool shouldRepaint(_DevFansCircularProgressIndicatorPainter oldPainter) {
    return oldPainter.trackColor != trackColor ||
        oldPainter.valueColor != valueColor ||
        oldPainter.value != value ||
        oldPainter.headValue != headValue ||
        oldPainter.tailValue != tailValue ||
        oldPainter.offsetValue != offsetValue ||
        oldPainter.rotationValue != rotationValue ||
        oldPainter.strokeWidth != strokeWidth ||
        oldPainter.strokeAlign != strokeAlign ||
        oldPainter.strokeCap != strokeCap ||
        oldPainter.trackGap != trackGap ||
        oldPainter.year2023 != year2023;
  }
}
