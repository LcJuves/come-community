import 'package:devfans/constants.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:devfans/widget/blend_mode_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VisibilityTempTip extends StatelessWidget {
  const VisibilityTempTip({
    super.key,
    this.body,
    this.backgroundColor,
    this.singleChildScrollViewSpacing = 0,
    this.fetchedGeoInfo,
  });

  final Widget? body;

  final Color? backgroundColor;

  final double singleChildScrollViewSpacing;

  final dynamic fetchedGeoInfo;

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        Constants.defaultSystemUiOverlayStyle,
      );
    }
    // I need international law.
    return Visibility(
      visible: (fetchedGeoInfo == null ||
              ("${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Shandong".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Jiangxi".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Guangdong".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Hubei".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Liaoning".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Shanghai".toLowerCase() ||
                  "${fetchedGeoInfo['region']}".toLowerCase() ==
                      "Beijing".toLowerCase())) ||
          (!kDebugMode && letTempTipVisible()),
      child: BackdropFilterScaffold(
        sigma: 6.18 / 2,
        backgroundColor: backgroundColor ?? Colors.white.withAlpha(132),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(singleChildScrollViewSpacing),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlendModeText(
                    "Hello",
                    fontSize: 75,
                    fontWeight: FontWeight.bold,
                    blendMode: BlendMode.difference,
                    foregroundPaintColor: Colors.white,
                  ),
                  BlendModeText(
                    "What's wrong with you?",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    blendMode: BlendMode.difference,
                    foregroundPaintColor: Colors.white,
                  ),
                  BlendModeText(
                    """People in a simulation game, 8 billion people around the world only need to pay the author enough money for financial freedom, and the author will solve it!
This may be considered as the best solution at present. Please use your VISA card to transfer money directly to the number `881017378957`, get rid of it~

Or you can scan the following QR code with Alipay, thank you:

""",
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    blendMode: BlendMode.difference,
                    foregroundPaintColor: Colors.white,
                  ),
                  BlendModeText(
                    """
█▀▀▀▀▀█ █▄█▄ █▄ ▀ █▄▄ ▄  █  █▀▀▄▄ █▀▀▀▀▀█
█ ███ █ ██▀▄  ▀▀▄█▀█ ▄ ▄██ ▀ ▀▀ ▄ █ ███ █
█ ▀▀▀ █ ▄▀ ▄█▀▄▄▀▄▄▀▄███▄ █▀  █▄▀ █ ▀▀▀ █
▀▀▀▀▀▀▀ ▀▄█ █ ▀ ▀▄▀▄█▄█▄▀ ▀▄█▄█ █ ▀▀▀▀▀▀▀
██▄ ▀█▀▄▄█ ▄▀▀▄█ █▀ ▀██▀▀▀ ▄▀█    ▄█▄▀███
█   █ ▀██▄▀███▀▀▀ ▀ █▀█▀ ▀██ █▀ ▀▀▄  ▄ ██
 ▄▀▀█▀▀▀█  ▀▄█▄ ▀ ▄█▄ ▀  ██▀▀▄▄ ▄▀ ▄█  █▄
█▄  █▀▀  ▄▄█▀ ██▄▄  ▀█▀▄▀▀██ █▄ ▀ ▄▀▄▀ ▄█
▀█▀ ▀█▀ ▄▄▄▄██  ▄▀▀▀▄▀▀█▀ ▀█▄██▀▀▀▄▄▄█▄█▄
▄ ▄▀▄▀▀█▄▄▄██ ▄█▀█▄ ▀▀▄█▀▀▀▀ █▄ ▄▀██▀▄ ██
█▀██▀█▀▄▄▀▄▀▀█▀▀▄ ▀▄▀▀▄ ▄▄▄█▀▄▄▄▀▄▄ ▄  ▄▄
▄█  ▀█▀▀▀██ ▄▀▀ ▀█ █▄█▄▄▄ ▄█▀▄▀ ▀▀▄ ▄▄ ▄█
▄▄▄▄▀█▀  ▄▄█▄▀▄█▄█▀  ▄█▀▀▄▄▄▀▀▄ ▀█▄█▄██▄█
▀ ▀█▀▄▀▀▀▄▄███▀▀▄ ▀▄▀▀██  █▀ █▄ ▀ ▄ █▀▀▀█
▄▄ ▀█▄▀    ▀▄▀▄▀▀▄▄█▄▄▀▀▄  █▄▀▀█▀▄▄▀▄▄  ▄
  ▀▀  ▀ ██▄█▀▀██▄██ ▀███   ▀▀▄▄ ▄▄█ ▄█ ▄▀
▀▀▀▀ ▀▀▀▄▄▀▄▄█ ▄▄▀█▀▀ █▄ ▄▄▄ █▄▄█▀▀▀██▀█▀
█▀▀▀▀▀█ ▄▄▀▀█ ▄▀▄█▄ ▄██▀█ ▀█ ████ ▀ █ ▀▄█
█ ███ █ ▀█▀ ▀█▀ ▄▄▀▄▀▄   ▄██ █▀█▀▀▀▀▀█▄█▀
█ ▀▀▀ █ ▄▀▄ ▄▀  ▀█▀█▄▄██▀ ▄█ ▄█▀█▀ ▀▄▀ ▄█
▀▀▀▀▀▀▀ ▀ ▀▀   ▀▀   ▀▀▀  ▀ ▀ ▀ ▀▀▀ ▀   ▀

                                                 
""",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    height: 0,
                    wordSpacing: 0,
                    letterSpacing: 0,
                    blendMode: BlendMode.difference,
                    foregroundPaintColor: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
