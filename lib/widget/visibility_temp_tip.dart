import 'package:devfans/constants.dart';
import 'package:devfans/info.dart';
import 'package:devfans/l10n/app_localizations_en.dart';
import 'package:devfans/l10n/app_localizations_zh.dart';
import 'package:devfans/webspec.dart';
import 'package:devfans/widget/backdrop_filter_scaffold.dart';
import 'package:devfans/widget/visibility_temp_tip_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protobuffers/items.pb.dart';

const double sigma = 6.18 / 4.5;

class VisibilityTempTip extends StatelessWidget {
  const VisibilityTempTip({
    super.key,
    this.body,
    this.backgroundColor,
    this.singleChildScrollViewSpacing = 0,
    required this.fetchedGeoInfo,
    required this.items,
  });

  final Widget? body;

  final Color? backgroundColor;

  final double singleChildScrollViewSpacing;

  final dynamic fetchedGeoInfo;

  final Items items;

  bool get currentLocaleIsEN => fetchedGeoInfo['country_code'] == "EN";

  String get visibilityTempTipDetailEn =>
      """ People in a simulation game, 8 billion people around the world only need to pay the author enough money for financial freedom, and the author will solve it!
 This may be considered as the best solution at present. Please use your VISA card to transfer money directly to the number `881017378957`, get rid of it~

 Or you can scan the following QR code with Alipay, thank you:

""";

  String get visibilityTempTipDetailZh =>
      """ 在一款模拟游戏里，全球80亿人只需给作者足够的钱实现财务自由，作者就会解决问题！
 这或许是目前最好的解决办法。请用你的VISA卡直接转账到账号‘881017378957’，摆脱困境吧～

 或者你也可以用支付宝扫描以下二维码，谢谢：

""";

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        Constants.defaultSystemUiOverlayStyle,
      );
    }

    final shouldVisible = items.hasTempTipVisible() && items.tempTipVisible;

    // I need international law.
    // Let's f**k the guy who violates privacy together.
    // And it is not allowed to obtain public packages and related dependencies.
    return Visibility(
      visible: (!kDebugMode && letTempTipVisible()) ||
          geoDisabled(fetchedGeoInfo, items) ||
          shouldVisible,
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
                  VisibilityTempTipText(
                    currentLocaleIsEN
                        ? AppLocalizationsEn().visibilityTempTipTitle
                        : AppLocalizationsZh().visibilityTempTipTitle,
                    fontSize: 75,
                    sigma: sigma,
                  ),
                  VisibilityTempTipText(
                    currentLocaleIsEN
                        ? AppLocalizationsEn().visibilityTempTipMessage
                        : AppLocalizationsZh().visibilityTempTipMessage,
                    fontSize: 24,
                    sigma: sigma,
                  ),
                  VisibilityTempTipText(
                    currentLocaleIsEN
                        ? visibilityTempTipDetailEn
                        : visibilityTempTipDetailZh,
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
