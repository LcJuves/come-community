import 'package:come/l10n/app_localizations.dart' show AppLocalizations;
import 'package:come/screen/home_page.dart' show HomePage;
import 'package:device_preview_plus/device_preview_plus.dart'
    show DevicePreview;
import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart'
    show
        MaterialApp,
        ThemeData,
        TabBarThemeData,
        Colors,
        TextSelectionThemeData,
        ScrollbarThemeData;
import 'package:flutter/rendering.dart' show Radius;
import 'package:flutter/widgets.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        Color,
        runApp,
        WidgetStatePropertyAll,
        MediaQuery;

void main() async {
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Menlo',
        textSelectionTheme: TextSelectionThemeData(
            selectionHandleColor: const Color.fromARGB(255, 60, 198, 123),
            cursorColor: Colors.black.withAlpha(180),
            selectionColor: const Color(0xFFB4D7FF)),
        tabBarTheme: const TabBarThemeData(
            indicatorColor: Color.fromARGB(255, 60, 198, 123)),
        scrollbarTheme: ScrollbarThemeData(
            thumbColor: WidgetStatePropertyAll(Colors.white.withAlpha(222)),
            radius: Radius.circular(MediaQuery.of(context).size.longestSide)),
      ),
      home: HomePage(),
    );
  }
}
