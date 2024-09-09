import 'package:flutter/material.dart';
import './HomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Happy Birthday Bro!",
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xff181a1b),
        primaryColor: const Color(0xff460570),
      ),
      home: const HomePage(),
    );
  }
}
