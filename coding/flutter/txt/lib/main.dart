import 'package:flutter/material.dart';
import 'package:txt/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        // scaffoldBackgroundColor: Colors.deepPurple,
        primaryColor: Colors.deepPurpleAccent
      )
    );
  }
}
