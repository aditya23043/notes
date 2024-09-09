import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


final List<String> imgList = [
  './assets/images/1.jpg',
  './assets/images/2.jpg',
  './assets/images/3.jpg',
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Happy Birthday Bro!!",
            style: TextStyle(
              fontFamily: "Dancing Script",
              fontWeight: FontWeight.w100,
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOutQuint,
              autoPlayInterval: const Duration(seconds: 6),
            ),
            items: imgList.map((item) => Center(
              child: Image.asset(
                item, fit: BoxFit.cover, height: height,
              )
            )).toList(),
          );
        }
      ),
    );
  }
}
