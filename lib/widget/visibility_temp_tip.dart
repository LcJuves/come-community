import 'package:devfans/constants.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:devfans/widget/visibility_temp_tip_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const double sigma = 6.18 / 4;

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

  bool networkDisabled(dynamic fetchedGeoInfo) {
    // At present, only IPv6 support is provided.
    return !("${fetchedGeoInfo['version']}".toLowerCase() != "ipv6" &&
        (!"${fetchedGeoInfo['ip']}".toLowerCase().startsWith("27") ||
            !"${fetchedGeoInfo['ip']}".toLowerCase().startsWith("255")));
  }

  bool geoDisabled(dynamic fetchedGeoInfo) {
    return (fetchedGeoInfo == null ||
        networkDisabled(
            fetchedGeoInfo) /* At present, only IPv6 support is provided. */ ||
        ("${fetchedGeoInfo['region']}".toLowerCase() ==
                "Shandong".toLowerCase() ||
            "${fetchedGeoInfo['region']}".toLowerCase() ==
                "Jiangxi".toLowerCase() ||
            ("${fetchedGeoInfo['city']}".toLowerCase() ==
                    "Guangdong".toLowerCase() &&
                networkDisabled(
                    fetchedGeoInfo) /* At present, only IPv6 support is provided. */)) ||
        ("${fetchedGeoInfo['region']}".toLowerCase() == "Hubei".toLowerCase() ||
            "${fetchedGeoInfo['country_code']}".toLowerCase() ==
                "JP".toLowerCase() ||
            "${fetchedGeoInfo['country_code']}".toLowerCase() ==
                "JPN".toLowerCase()));
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        Constants.defaultSystemUiOverlayStyle,
      );
    }

    // I need international law.
    // Let's f**k the guy who violates privacy together.
    // And it is not allowed to obtain public packages and related dependencies.
    return Visibility(
      visible:
          (!kDebugMode && letTempTipVisible()) || geoDisabled(fetchedGeoInfo),
      child: BackdropFilterScaffold(
        sigma: sigma,
        backgroundColor: backgroundColor ?? Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(singleChildScrollViewSpacing),
            child: Center(
              child: SelectionArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const VisibilityTempTipText(
                    " Hello",
                    fontSize: 75,
                    sigma: sigma,
                  ),
                  const VisibilityTempTipText(
                    " What's wrong with you?",
                    fontSize: 24,
                    sigma: sigma,
                  ),
                  const VisibilityTempTipText(
                    """ People in a simulation game, 8 billion people around the world only need to pay the author enough money for financial freedom, and the author will solve it!
 This may be considered as the best solution at present. Please use your VISA card to transfer money directly to the number `881017378957`, get rid of it~

 Or you can scan the following QR code with Alipay, thank you:

""",
                    fontSize: 13,
                    sigma: sigma,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.lightBlue,
                        backgroundBlendMode: BlendMode.difference),
                    child: const FittedBox(
                      fit: BoxFit.cover,
                      child: VisibilityTempTipText(
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
▀▀▀▀▀▀▀ ▀ ▀▀   ▀▀   ▀▀▀  ▀ ▀ ▀ ▀▀▀ ▀   ▀ """,
                        fontSize: 12.04,
                        sigma: sigma,
                        height: 1,
                        wordSpacing: 0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
