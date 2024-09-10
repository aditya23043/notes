import 'package:flutter/material.dart';
import './HomePage.dart';
import './WishesPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/wishes': (context) => const WishesPage(),
      },
      debugShowCheckedModeBanner: false,
      title: "Happy Birthday Bro!",
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff181a1b),
        // primaryColor: const Color(0xff460570),
        primaryColor: Colors.deepPurple[600],
      ),
      home: const HomePage(),
    );
  }
}
