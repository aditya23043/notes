import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Settings Page",
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
