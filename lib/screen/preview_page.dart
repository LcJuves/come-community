import 'dart:io' show Platform;

import 'package:clipboard/clipboard.dart' show FlutterClipboard;
import 'package:come/constants.dart' show Constants;
import 'package:flutter/foundation.dart' show kIsWeb, kDebugMode;
import 'package:flutter/material.dart'
    show
        StatefulWidget,
        Widget,
        State,
        BuildContext,
        EdgeInsets,
        TextStyle,
        Brightness,
        Colors,
        MediaQuery,
        Alignment,
        BorderRadius,
        MainAxisSize,
        MainAxisAlignment,
        Icons,
        Navigator,
        SizedBox,
        Container,
        FontWeight,
        Text,
        Column,
        ScaffoldMessenger,
        SnackBar,
        Visibility,
        Row,
        Align,
        Stack,
        Padding,
        Scaffold;
import 'package:flutter/services.dart' show SystemChrome;
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart'
    show InAppWebViewController, InAppWebView, WebUri, URLRequest;
import 'package:share_plus/share_plus.dart' show ShareParams, SharePlus;
import 'package:url_launcher/url_launcher.dart' show launchUrl;
import 'package:url_launcher/url_launcher_string.dart' show LaunchMode;

import '../l10n/app_localizations_en.dart' show AppLocalizationsEn;
import '../l10n/app_localizations_zh.dart' show AppLocalizationsZh;
import '../widget/page_icon_button.dart' show PageIconButton;
import '../widget/rounded_superellipse_border_physical_shape.dart'
    show RoundedSuperellipseBorderPhysicalShape;

class PreviewPage extends StatefulWidget {
  final String title;
  final Widget icon;
  final Uri previewUrl;
  final dynamic geoInfo;

  const PreviewPage(
      {super.key,
      required this.title,
      required this.icon,
      required this.previewUrl,
      required this.geoInfo});

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  late final InAppWebViewController? _inAppWebViewController;
  late final InAppWebView _inAppWebView;
  late final String _copySucceedMessage;
  late final String _canNotCopiedMessage;
  late final String _unavailableWithShareResultMessage;

  @override
  void initState() {
    super.initState();
    _inAppWebView = InAppWebView(
      initialUrlRequest: URLRequest(
          url: WebUri(widget.previewUrl.toString()),
          assumesHTTP3Capable: true,
          headers:
              Map.of(<String, String>{"Origin": widget.previewUrl.origin})),
      onWebViewCreated: (controller) {
        _inAppWebViewController = controller;
      },
    );
    final bool currentLocaleIsNotCN =
        !"${widget.geoInfo['country_code']}".toLowerCase().startsWith("cn");
    _copySucceedMessage = currentLocaleIsNotCN
        ? AppLocalizationsEn().copySucceedMessage
        : AppLocalizationsZh().copySucceedMessage;
    _canNotCopiedMessage = currentLocaleIsNotCN
        ? AppLocalizationsEn().canNotCopiedMessage
        : AppLocalizationsZh().canNotCopiedMessage;
    _unavailableWithShareResultMessage = currentLocaleIsNotCN
        ? AppLocalizationsEn().unavailableWithShareResultMessage
        : AppLocalizationsZh().unavailableWithShareResultMessage;
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
          Constants.defaultSystemUiOverlayStyle.copyWith(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.light,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: MediaQuery.of(context).padding.bottom),
        child: Stack(
          children: [
            _inAppWebView,
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: Constants.blurContainerPadding),
                child: RoundedSuperellipseBorderPhysicalShape(
                  shadowColor: Colors.grey.withAlpha(169),
                  elevation: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withAlpha(35),
                        backgroundBlendMode: BlendMode.plus),
                    foregroundDecoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.longestSide))),
                    padding:
                        const EdgeInsets.all(Constants.blurContainerPadding),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PageIconButton(Icons.arrow_back_rounded,
                            onPressed: () async {
                          // ignore: use_build_context_synchronously
                          await Navigator.maybePop(context);
                        }),
                        PageIconButton(
                          Icons.arrow_back_ios_rounded,
                          onPressed: () async {
                            final bool? inAppWebViewCanGoBack =
                                await _inAppWebViewController?.canGoBack();
                            if (inAppWebViewCanGoBack != null &&
                                inAppWebViewCanGoBack) {
                              await _inAppWebViewController?.goBack();
                            } else {
                              // ignore: use_build_context_synchronously
                              await Navigator.maybePop(context);
                            }
                          },
                        ),
                        PageIconButton(
                          Icons.arrow_forward_ios_rounded,
                          onPressed: () async {
                            final bool? inAppWebViewCanGoForward =
                                await _inAppWebViewController?.canGoForward();
                            if (inAppWebViewCanGoForward != null &&
                                inAppWebViewCanGoForward) {
                              await _inAppWebViewController?.goForward();
                            }
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: Constants.blurContainerPadding * 3),
                          child: SizedBox.square(
                            dimension: (((Constants.vectorIconSize / 2) *
                                        Constants.goldenRatio) *
                                    3) *
                                Constants.goldenRatio,
                            child: widget.icon,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: Constants.blurContainerPadding * 2,
                              right: Constants.blurContainerPadding * 3),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Text(
                                widget.previewUrl.host,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        PageIconButton(
                          Icons.share_rounded,
                          onPressed: () async {
                            try {
                              final currentInAppWebViewUrl =
                                  await _inAppWebViewController?.getUrl();
                              if (currentInAppWebViewUrl != null) {
                                final params =
                                    ShareParams(uri: currentInAppWebViewUrl);
                                final _ =
                                    await SharePlus.instance.share(params);
                              } else {
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                        _unavailableWithShareResultMessage),
                                  ),
                                );
                              }
                            } catch (_) {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text(_unavailableWithShareResultMessage),
                                ),
                              );
                            }
                          },
                        ),
                        Visibility(
                            visible: kDebugMode,
                            child: PageIconButton(
                              Icons.paste_rounded,
                              onPressed: () async {
                                final currentInAppWebViewUrl =
                                    await _inAppWebViewController?.getUrl();
                                if (currentInAppWebViewUrl != null) {
                                  await FlutterClipboard.copy(
                                      currentInAppWebViewUrl.toString());
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(_copySucceedMessage),
                                    ),
                                  );
                                } else {
                                  // ignore: use_build_context_synchronously
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(_canNotCopiedMessage),
                                    ),
                                  );
                                }
                              },
                            )),
                        Visibility(
                            visible: kDebugMode,
                            child: PageIconButton(
                              Icons.open_in_browser_rounded,
                              onPressed: () async {
                                final currentInAppWebViewUrl =
                                    await _inAppWebViewController?.getUrl();
                                if (currentInAppWebViewUrl != null) {
                                  await launchUrl(currentInAppWebViewUrl,
                                      mode: LaunchMode.inAppWebView);
                                }
                              },
                            )),
                        Visibility(
                            visible: !kIsWeb && Platform.isWindows,
                            child: PageIconButton(
                              Icons.developer_mode_rounded,
                              onPressed: () async {
                                await _inAppWebViewController?.openDevTools();
                              },
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
