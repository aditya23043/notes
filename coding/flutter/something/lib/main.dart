import 'package:flutter/material.dart';
import 'package:something/pages/button_press.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonPress(),
      debugShowCheckedModeBanner: false,
    );
  }
}
