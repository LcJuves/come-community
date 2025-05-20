import 'package:devfans/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        indicatorColor: const Color.fromARGB(255, 60, 198, 123),
        primaryColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Menlo',
        textSelectionTheme: TextSelectionThemeData(
            selectionHandleColor: const Color.fromARGB(255, 60, 198, 123),
            cursorColor: Colors.black.withAlpha(180),
            selectionColor: const Color(0xFFB4D7FF)),
      ),
      home: const HomePage(),
    );
  }
}
