import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Text(
          "Profile Page",
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
