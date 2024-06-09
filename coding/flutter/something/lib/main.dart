import 'package:flutter/material.dart';
import 'package:something/pages/first.dart';
import 'package:something/pages/home_page.dart';
import 'package:something/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/settingspage': (context) => SettingsPage(),
        '/homepage': (context) => HomePage(),
      },
    );
  }
}
