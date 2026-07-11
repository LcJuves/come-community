import 'dart:ui' show Canvas, Size, Path, Paint, Color;

import 'package:come/constants.dart' show Constants;
import 'package:flutter/rendering.dart' show CustomPainter;
import 'package:flutter/widget_previews.dart' show Preview;
import 'package:flutter/widgets.dart'
    show StatelessWidget, Widget, BuildContext, SizedBox, CustomPaint;

class CaptivePortalIcon extends StatelessWidget {
  @Preview()
  const CaptivePortalIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
        dimension: Constants.captivePortalIconSize,
        child: CustomPaint(
          painter: CaptivePortalPainter(),
        ));
  }
}

class CaptivePortalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    final Paint paint = Paint();

    // Path 1 Fill
    paint.color = const Color(0xff000000).withValues(alpha: 1);
    path.moveTo(size.width * 0.8, size.height * -0.33);
    path.lineTo(size.width * 0.8, size.height * -0.27);
    path.cubicTo(size.width * 0.8, size.height * -0.25, size.width * 0.8,
        size.height * -0.24, size.width * 0.79, size.height * -0.23);
    path.cubicTo(size.width * 0.78, size.height * -0.22, size.width * 0.76,
        size.height * -0.22, size.width * 0.75, size.height * -0.22);
    path.cubicTo(size.width * 0.74, size.height * -0.22, size.width * 0.72,
        size.height * -0.22, size.width * 0.71, size.height * -0.23);
    path.cubicTo(size.width * 0.7, size.height * -0.24, size.width * 0.7,
        size.height * -0.25, size.width * 0.7, size.height * -0.27);
    path.lineTo(size.width * 0.7, size.height * -0.42);
    path.cubicTo(size.width * 0.7, size.height * -0.45, size.width * 0.71,
        size.height * -0.46, size.width * 0.72, size.height * -0.48);
    path.cubicTo(size.width * 0.74, size.height * -0.49, size.width * 0.75,
        size.height * -0.5, size.width * 0.78, size.height * -0.5);
    path.lineTo(size.width * 0.93, size.height * -0.5);
    path.cubicTo(size.width * 0.95, size.height * -0.5, size.width * 0.96,
        size.height * -0.5, size.width * 0.97, size.height * -0.49);
    path.cubicTo(size.width * 0.98, size.height * -0.48, size.width * 0.98,
        size.height * -0.46, size.width * 0.98, size.height * -0.45);
    path.cubicTo(size.width * 0.98, size.height * -0.44, size.width * 0.98,
        size.height * -0.42, size.width * 0.97, size.height * -0.41);
    path.cubicTo(size.width * 0.96, size.height * -0.4, size.width * 0.95,
        size.height * -0.4, size.width * 0.93, size.height * -0.4);
    path.lineTo(size.width * 0.87, size.height * -0.4);
    path.lineTo(size.width * 0.98, size.height * -0.29);
    path.cubicTo(size.width * 0.99, size.height * -0.28, size.width,
        size.height * -0.27, size.width, size.height * -0.25);
    path.cubicTo(size.width, size.height * -0.24, size.width * 0.99,
        size.height * -0.23, size.width * 0.98, size.height * -0.22);
    path.cubicTo(size.width * 0.97, size.height * -0.21, size.width * 0.96,
        size.height * -0.2, size.width * 0.95, size.height * -0.2);
    path.cubicTo(size.width * 0.93, size.height * -0.2, size.width * 0.92,
        size.height * -0.21, size.width * 0.91, size.height * -0.22);
    path.lineTo(size.width * 0.8, size.height * -0.33);
    path.moveTo(size.width * 0.5, size.height * -0.2);
    path.cubicTo(size.width * 0.43, size.height * -0.2, size.width * 0.37,
        size.height * -0.21, size.width * 0.31, size.height * -0.24);
    path.cubicTo(size.width * 0.24, size.height * -0.27, size.width * 0.19,
        size.height * -0.3, size.width * 0.15, size.height * -0.35);
    path.cubicTo(size.width * 0.1, size.height * -0.39, size.width * 0.07,
        size.height * -0.44, size.width * 0.04, size.height * -0.5);
    path.cubicTo(size.width * 0.01, size.height * -0.57, 0, size.height * -0.63,
        0, size.height * -0.7);
    path.cubicTo(0, size.height * -0.77, size.width * 0.01, size.height * -0.83,
        size.width * 0.04, size.height * -0.89);
    path.cubicTo(size.width * 0.07, size.height * -0.96, size.width * 0.1,
        size.height * -1.01, size.width * 0.15, size.height * -1.05);
    path.cubicTo(size.width * 0.19, size.height * -1.1, size.width * 0.24,
        size.height * -1.13, size.width * 0.31, size.height * -1.16);
    path.cubicTo(size.width * 0.37, size.height * -1.19, size.width * 0.43,
        size.height * -1.2, size.width * 0.5, size.height * -1.2);
    path.cubicTo(size.width * 0.57, size.height * -1.2, size.width * 0.63,
        size.height * -1.19, size.width * 0.7, size.height * -1.16);
    path.cubicTo(size.width * 0.76, size.height * -1.13, size.width * 0.81,
        size.height * -1.1, size.width * 0.85, size.height * -1.05);
    path.cubicTo(size.width * 0.9, size.height * -1.01, size.width * 0.93,
        size.height * -0.96, size.width * 0.96, size.height * -0.89);
    path.cubicTo(size.width * 0.99, size.height * -0.83, size.width,
        size.height * -0.77, size.width, size.height * -0.7);
    path.cubicTo(size.width, size.height * -0.69, size.width,
        size.height * -0.68, size.width, size.height * -0.67);
    path.cubicTo(size.width, size.height * -0.66, size.width,
        size.height * -0.65, size.width, size.height * -0.64);
    path.cubicTo(size.width, size.height * -0.63, size.width * 0.99,
        size.height * -0.62, size.width * 0.98, size.height * -0.61);
    path.cubicTo(size.width * 0.97, size.height * -0.6, size.width * 0.96,
        size.height * -0.6, size.width * 0.94, size.height * -0.6);
    path.cubicTo(size.width * 0.93, size.height * -0.6, size.width * 0.92,
        size.height * -0.61, size.width * 0.91, size.height * -0.62);
    path.cubicTo(size.width * 0.9, size.height * -0.63, size.width * 0.9,
        size.height * -0.64, size.width * 0.9, size.height * -0.65);
    path.cubicTo(size.width * 0.9, size.height * -0.66, size.width * 0.9,
        size.height * -0.67, size.width * 0.9, size.height * -0.68);
    path.lineTo(size.width * 0.9, size.height * -0.7);
    path.cubicTo(size.width * 0.9, size.height * -0.72, size.width * 0.9,
        size.height * -0.73, size.width * 0.9, size.height * -0.75);
    path.cubicTo(size.width * 0.89, size.height * -0.77, size.width * 0.89,
        size.height * -0.78, size.width * 0.89, size.height * -0.8);
    path.lineTo(size.width * 0.72, size.height * -0.8);
    path.cubicTo(size.width * 0.72, size.height * -0.78, size.width * 0.72,
        size.height * -0.77, size.width * 0.72, size.height * -0.75);
    path.cubicTo(size.width * 0.72, size.height * -0.73, size.width * 0.73,
        size.height * -0.72, size.width * 0.73, size.height * -0.7);
    path.lineTo(size.width * 0.73, size.height * -0.67);
    path.cubicTo(size.width * 0.73, size.height * -0.66, size.width * 0.72,
        size.height * -0.65, size.width * 0.72, size.height * -0.65);
    path.cubicTo(size.width * 0.72, size.height * -0.63, size.width * 0.72,
        size.height * -0.62, size.width * 0.71, size.height * -0.61);
    path.cubicTo(size.width * 0.7, size.height * -0.6, size.width * 0.68,
        size.height * -0.6, size.width * 0.67, size.height * -0.6);
    path.cubicTo(size.width * 0.66, size.height * -0.6, size.width * 0.65,
        size.height * -0.61, size.width * 0.64, size.height * -0.62);
    path.cubicTo(size.width * 0.63, size.height * -0.63, size.width * 0.62,
        size.height * -0.64, size.width * 0.62, size.height * -0.65);
    path.cubicTo(size.width * 0.62, size.height * -0.66, size.width * 0.63,
        size.height * -0.67, size.width * 0.63, size.height * -0.68);
    path.lineTo(size.width * 0.63, size.height * -0.7);
    path.cubicTo(size.width * 0.63, size.height * -0.72, size.width * 0.62,
        size.height * -0.73, size.width * 0.62, size.height * -0.75);
    path.cubicTo(size.width * 0.62, size.height * -0.77, size.width * 0.62,
        size.height * -0.78, size.width * 0.62, size.height * -0.8);
    path.lineTo(size.width * 0.38, size.height * -0.8);
    path.cubicTo(size.width * 0.38, size.height * -0.78, size.width * 0.38,
        size.height * -0.77, size.width * 0.38, size.height * -0.75);
    path.cubicTo(size.width * 0.38, size.height * -0.73, size.width * 0.38,
        size.height * -0.72, size.width * 0.38, size.height * -0.7);
    path.cubicTo(size.width * 0.38, size.height * -0.68, size.width * 0.38,
        size.height * -0.67, size.width * 0.38, size.height * -0.65);
    path.cubicTo(size.width * 0.38, size.height * -0.63, size.width * 0.38,
        size.height * -0.62, size.width * 0.38, size.height * -0.6);
    path.lineTo(size.width * 0.5, size.height * -0.6);
    path.cubicTo(size.width * 0.51, size.height * -0.6, size.width * 0.53,
        size.height * -0.6, size.width * 0.54, size.height * -0.59);
    path.cubicTo(size.width * 0.55, size.height * -0.58, size.width * 0.55,
        size.height * -0.56, size.width * 0.55, size.height * -0.55);
    path.cubicTo(size.width * 0.55, size.height * -0.54, size.width * 0.55,
        size.height * -0.52, size.width * 0.54, size.height * -0.51);
    path.cubicTo(size.width * 0.53, size.height * -0.5, size.width * 0.51,
        size.height * -0.5, size.width * 0.5, size.height * -0.5);
    path.lineTo(size.width * 0.41, size.height * -0.5);
    path.cubicTo(size.width * 0.42, size.height * -0.46, size.width * 0.43,
        size.height * -0.43, size.width * 0.44, size.height * -0.4);
    path.cubicTo(size.width * 0.46, size.height * -0.36, size.width * 0.48,
        size.height * -0.33, size.width * 0.5, size.height * -0.3);
    path.cubicTo(size.width * 0.51, size.height * -0.3, size.width * 0.52,
        size.height * -0.3, size.width * 0.53, size.height * -0.3);
    path.cubicTo(size.width * 0.53, size.height * -0.3, size.width * 0.54,
        size.height * -0.3, size.width * 0.55, size.height * -0.3);
    path.cubicTo(size.width * 0.56, size.height * -0.3, size.width * 0.58,
        size.height * -0.3, size.width * 0.59, size.height * -0.29);
    path.cubicTo(size.width * 0.59, size.height * -0.28, size.width * 0.6,
        size.height * -0.27, size.width * 0.6, size.height * -0.26);
    path.cubicTo(size.width * 0.6, size.height * -0.24, size.width * 0.6,
        size.height * -0.23, size.width * 0.59, size.height * -0.22);
    path.cubicTo(size.width * 0.58, size.height * -0.21, size.width * 0.57,
        size.height * -0.2, size.width * 0.56, size.height * -0.2);
    path.cubicTo(size.width * 0.55, size.height * -0.2, size.width * 0.54,
        size.height * -0.2, size.width * 0.53, size.height * -0.2);
    path.cubicTo(size.width * 0.52, size.height * -0.2, size.width * 0.51,
        size.height * -0.2, size.width * 0.5, size.height * -0.2);
    path.moveTo(size.width * 0.11, size.height * -0.6);
    path.lineTo(size.width * 0.28, size.height * -0.6);
    path.cubicTo(size.width * 0.28, size.height * -0.62, size.width * 0.28,
        size.height * -0.63, size.width * 0.28, size.height * -0.65);
    path.cubicTo(size.width * 0.28, size.height * -0.67, size.width * 0.28,
        size.height * -0.68, size.width * 0.28, size.height * -0.7);
    path.cubicTo(size.width * 0.28, size.height * -0.72, size.width * 0.28,
        size.height * -0.73, size.width * 0.28, size.height * -0.75);
    path.cubicTo(size.width * 0.28, size.height * -0.77, size.width * 0.28,
        size.height * -0.78, size.width * 0.28, size.height * -0.8);
    path.lineTo(size.width * 0.11, size.height * -0.8);
    path.cubicTo(size.width * 0.11, size.height * -0.78, size.width * 0.11,
        size.height * -0.77, size.width * 0.1, size.height * -0.75);
    path.cubicTo(size.width * 0.1, size.height * -0.73, size.width * 0.1,
        size.height * -0.72, size.width * 0.1, size.height * -0.7);
    path.cubicTo(size.width * 0.1, size.height * -0.68, size.width * 0.1,
        size.height * -0.67, size.width * 0.1, size.height * -0.65);
    path.cubicTo(size.width * 0.11, size.height * -0.63, size.width * 0.11,
        size.height * -0.62, size.width * 0.11, size.height * -0.6);
    path.moveTo(size.width * 0.37, size.height * -0.32);
    path.cubicTo(size.width * 0.36, size.height * -0.35, size.width * 0.34,
        size.height * -0.38, size.width * 0.33, size.height * -0.41);
    path.cubicTo(size.width * 0.32, size.height * -0.44, size.width * 0.31,
        size.height * -0.47, size.width * 0.3, size.height * -0.5);
    path.lineTo(size.width * 0.16, size.height * -0.5);
    path.cubicTo(size.width * 0.18, size.height * -0.46, size.width * 0.21,
        size.height * -0.42, size.width * 0.25, size.height * -0.39);
    path.cubicTo(size.width * 0.28, size.height * -0.36, size.width * 0.32,
        size.height * -0.34, size.width * 0.37, size.height * -0.32);
    path.moveTo(size.width * 0.16, size.height * -0.9);
    path.lineTo(size.width * 0.3, size.height * -0.9);
    path.cubicTo(size.width * 0.31, size.height * -0.93, size.width * 0.32,
        size.height * -0.96, size.width * 0.33, size.height * -0.99);
    path.cubicTo(size.width * 0.34, size.height * -1.02, size.width * 0.36,
        size.height * -1.05, size.width * 0.37, size.height * -1.08);
    path.cubicTo(size.width * 0.32, size.height * -1.06, size.width * 0.28,
        size.height * -1.04, size.width * 0.25, size.height * -1.01);
    path.cubicTo(size.width * 0.21, size.height * -0.98, size.width * 0.18,
        size.height * -0.94, size.width * 0.16, size.height * -0.9);
    path.moveTo(size.width * 0.41, size.height * -0.9);
    path.lineTo(size.width * 0.6, size.height * -0.9);
    path.cubicTo(size.width * 0.59, size.height * -0.94, size.width * 0.57,
        size.height * -0.97, size.width * 0.56, size.height * -1);
    path.cubicTo(size.width * 0.54, size.height * -1.04, size.width * 0.52,
        size.height * -1.07, size.width * 0.5, size.height * -1.1);
    path.cubicTo(size.width * 0.48, size.height * -1.07, size.width * 0.46,
        size.height * -1.04, size.width * 0.44, size.height * -1);
    path.cubicTo(size.width * 0.43, size.height * -0.97, size.width * 0.42,
        size.height * -0.94, size.width * 0.41, size.height * -0.9);
    path.moveTo(size.width * 0.7, size.height * -0.9);
    path.lineTo(size.width * 0.85, size.height * -0.9);
    path.cubicTo(size.width * 0.82, size.height * -0.94, size.width * 0.79,
        size.height * -0.98, size.width * 0.75, size.height * -1.01);
    path.cubicTo(size.width * 0.72, size.height * -1.04, size.width * 0.68,
        size.height * -1.06, size.width * 0.63, size.height * -1.08);
    path.cubicTo(size.width * 0.65, size.height * -1.05, size.width * 0.66,
        size.height * -1.02, size.width * 0.67, size.height * -0.99);
    path.cubicTo(size.width * 0.68, size.height * -0.96, size.width * 0.69,
        size.height * -0.93, size.width * 0.7, size.height * -0.9);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
