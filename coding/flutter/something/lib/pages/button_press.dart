import 'package:flutter/material.dart';

class ButtonPress extends StatefulWidget {
  const ButtonPress({super.key});

  @override
  State<ButtonPress> createState() => _ButtonPressState();
}

class _ButtonPressState extends State<ButtonPress> {
  int _count = 0;

  void update_count() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Number of times the button has been pressed:",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "VictorMono NFM",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(""),
            Text(
              _count.toString(),
              style: TextStyle(
                fontSize: 40,
                fontFamily: "VictorMono NFM",
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Text(""),
            Text(""),
            Text(""),
            GestureDetector(
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 64,
              ),
              onTap: update_count,
            )
          ],
        ),
      ),
    );
  }
}
