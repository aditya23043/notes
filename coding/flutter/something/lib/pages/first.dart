import 'package:flutter/material.dart';
import 'package:something/pages/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "First Page",
            style: TextStyle(
              fontFamily: "VictorMono NFM",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                  blurRadius: 8,
                )
              ],
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SecondPage()));
            },
            child: Text(
              "Go To 2nd Page",
              style: TextStyle(
                fontFamily: "VictorMono NFM",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
