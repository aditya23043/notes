import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontFamily: "VictorMono NFM",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
