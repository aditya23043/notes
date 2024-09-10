import 'package:bha/WishTemplate.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WishesPage extends StatelessWidget {
  const WishesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishes"),
      ),
      body: const Column(
        children: [
          WishTemplate(wish: "Wish you a very Happy Birthday Bro!", author: "Adi"),
        ],
      )
    );
  }
}
