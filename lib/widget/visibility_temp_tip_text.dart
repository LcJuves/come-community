import 'package:come/widget/come_text.dart' show ComeText;
import 'package:come/widget/linear_gradient_shader_mask.dart'
    show LinearGradientShaderMask;
import 'package:flutter/material.dart'
    show
        StatelessWidget,
        Paint,
        BuildContext,
        Widget,
        EdgeInsets,
        BlendMode,
        FontWeight,
        MaskFilter,
        BlurStyle,
        Padding,
        Colors,
        Stack;

class VisibilityTempTipText extends StatelessWidget {
  const VisibilityTempTipText(String this.data,
      {super.key,
      this.fontSize,
      this.letterSpacing,
      this.wordSpacing,
      this.height,
      this.selectable = false,
      this.backgroundPaint,
      this.sigma = 0});

  /// The text to display.
  ///
  /// This will be null if a [textSpan] is provided instead.
  final String? data;

  /// The size of fonts (in logical pixels) to use when painting the text.
  ///
  /// The value specified matches the dimension of the
  /// [em square](https://fonts.google.com/knowledge/glossary/em) of the
  /// underlying font, and more often then not isn't exactly the height or the
  /// width of glyphs in the font.
  ///
  /// During painting, the [fontSize] is multiplied by the current
  /// `textScaleFactor` to let users make it easier to read text by increasing
  /// its size.
  ///
  /// The [getParagraphStyle] method defaults to 14 logical pixels if [fontSize]
  /// is set to null.
  final double? fontSize;

  /// The amount of space (in logical pixels) to add between each letter.
  /// A negative value can be used to bring the letters closer.
  final double? letterSpacing;

  /// The amount of space (in logical pixels) to add at each sequence of
  /// white-space (i.e. between each word). A negative value can be used to
  /// bring the words closer.
  final double? wordSpacing;

  /// The height of this text span, as a multiple of the font size.
  ///
  /// When [height] is [kTextHeightNone], the line height will be determined by
  /// the font's metrics directly, which may differ from the fontSize. Otherwise
  /// the line height of the span of text will be a multiple of [fontSize],
  /// and be exactly `fontSize * height` logical pixels tall.
  ///
  /// For most fonts, setting [height] to 1.0 is not the same as setting height
  /// to [kTextHeightNone] because the [fontSize] sets the height of the EM-square,
  /// which is different than the font provided metrics for line height. The
  /// following diagram illustrates the difference between the font-metrics
  /// defined line height and the line height produced with `height: 1.0`
  /// (which forms the upper and lower edges of the EM-square):
  ///
  /// ![With the font-metrics-defined line height, there is space between lines appropriate for the font, whereas the EM-square is only the height required to hold most of the characters.](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_diagram.png)
  ///
  /// Examples of the resulting line heights from different values of `TextStyle.height`:
  ///
  /// ![Since the explicit line height is applied as a scale factor on the font-metrics-defined line height, the gap above the text grows faster, as the height grows, than the gap below the text.](https://flutter.github.io/assets-for-api-docs/assets/painting/text_height_comparison_diagram.png)
  ///
  /// See [StrutStyle] and [TextHeightBehavior] for further control of line
  /// height at the paragraph level.
  final double? height;

  final bool selectable;

  final Paint? backgroundPaint;

  final double sigma;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LinearGradientShaderMask(
            blendMode: BlendMode.srcATop,
            child: Padding(
                padding: const EdgeInsets.all(0.5),
                child: ComeText(
                  data ?? "",
                  selectable: selectable,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  letterSpacing: letterSpacing,
                  wordSpacing: wordSpacing,
                  height: height,
                  maskFilter: MaskFilter.blur(BlurStyle.solid, sigma * 1.5),
                ))),
        ComeText(
          data ?? "",
          selectable: selectable,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          height: height,
          foregroundPaintColor: Colors.blueGrey,
          blendMode: BlendMode.plus,
          backgroundPaint: backgroundPaint,
        )
      ],
    );
  }
}
