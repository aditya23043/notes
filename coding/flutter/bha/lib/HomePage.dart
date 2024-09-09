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
      appBar: AppBar(
        backgroundColor: const Color(0xff460570),
        foregroundColor: Colors.white,
        elevation: 10,
        title: const Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Happy Birthday Bro!!",
              style: TextStyle(
                fontFamily: "Dancing Script",
                fontWeight: FontWeight.w100,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOutQuint,
              autoPlayInterval: const Duration(seconds: 4),
              aspectRatio: 9/16,
            ),
            items: imgList.map((item) => Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(4, 4)
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    item, 
                    fit: BoxFit.cover,
                  ),
                ),
              )
            )).toList(),
          );
        }
      ),
    );
  }
}
