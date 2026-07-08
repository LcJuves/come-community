import 'dart:ui' show BlendMode;

import 'package:come/constants.dart' show Constants;
import 'package:come/widget/linear_gradient_shader_mask.dart'
    show LinearGradientShaderMask;
import 'package:flutter/material.dart' show Colors;
import 'package:flutter/widget_previews.dart' show Preview;
import 'package:flutter/widgets.dart' show StatelessWidget, ColorFiltered, Widget, BuildContext, ColorFilter, SizedBox;


import 'package:jovial_svg/jovial_svg.dart'
    show ScalableImageWidget, ScalableImage;

class CaptivePortalSvgPicture extends StatelessWidget {

  @Preview()
  const CaptivePortalSvgPicture({super.key});

  final String _captivePortalSvg =
      """<svg xmlns="http://www.w3.org/2000/svg" fill="#e3e3e3" viewBox="0 -960 800 800"><path d="M640-263v49q0 17-11.5 28.5T600-174t-28.5-11.5T560-214v-126q0-25 17.5-42.5T620-400h126q17 0 28.5 11.5T786-360t-11.5 28.5T746-320h-50l90 90q11 11 11 27.5T786-174q-12 12-28.5 12T729-174zM400-160q-83 0-156-31.5T117-277 31.5-404 0-560t31.5-156T117-843t127-85.5T400-960t156 31.5T683-843t85.5 127T800-560q0 10-.5 22t-1.5 22q-2 17-14 26.5t-30 9.5q-16 0-27-14t-9-30q2-10 2-18v-18q0-20-2.5-40t-7.5-40H574q3 20 4.5 40t1.5 40v21.5q0 11.5-1 21.5-2 17-14 27t-29 10q-16 0-27.5-13t-9.5-29q1-10 1-19v-19q0-20-1.5-40t-4.5-40H306q-3 20-4.5 40t-1.5 40 1.5 40 4.5 40h94q17 0 28.5 11.5T440-440t-11.5 28.5T400-400h-76q12 43 31 82.5t45 75.5q10 0 20 .5t20-.5q17-2 28 8.5t11 27.5q0 18-9 30t-26 14q-10 1-22 1.5t-22 .5M90-480h136q-3-20-4.5-40t-1.5-40 1.5-40 4.5-40H90q-5 20-7.5 40T80-560t2.5 40 7.5 40m206 222q-18-34-31.5-69.5T242-400H124q29 51 73 87.5t99 54.5M124-720h118q9-37 22.5-72.5T296-862q-55 18-99 54.5T124-720m200 0h152q-12-43-31-82.5T400-878q-26 36-45 75.5T324-720m234 0h118q-29-51-73-87.5T504-862q18 34 31.5 69.5T558-720"/></svg>""";

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: Constants.captivePortalIconSize,
      child: LinearGradientShaderMask(
        blendMode: BlendMode.modulate,
        child: ColorFiltered(
            colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcATop),
            child: ScalableImageWidget(
              si: ScalableImage.fromSvgString(_captivePortalSvg),
            )),
      ),
    );
  }
}
