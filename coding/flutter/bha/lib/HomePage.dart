import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Happy Birthday Bro!!",
            style: TextStyle(
              fontFamily: "Fira Sans",
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
    );
  }
}
