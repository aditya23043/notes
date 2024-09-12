import 'package:flutter/material.dart';

class WishTemplate extends StatelessWidget {

  final String wish, author;

  const WishTemplate({super.key, required this.wish, required this.author});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            wish,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Handlee",
              fontWeight: FontWeight.w100,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            "- $author",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Handlee",
              fontWeight: FontWeight.w100,
              color: Colors.white70,
              fontSize: 20,
            ),
          ),
          const Text(""),
          const Text(""),
          Divider(color: Colors.grey),
          const Text(""),
          const Text(""),
          const Text(""),
        ],
      ),
    );
  }
}
