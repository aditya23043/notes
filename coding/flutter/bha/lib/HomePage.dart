import 'dart:ffi';

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
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 100.0, right: 20, left: 20),
          child: Text(
            "Bro thought this was going to an actual functional App Navigator LOL. You gotta open more doors for that.",
            style: TextStyle(
              // fontFamily: "Handlee",
              fontWeight: FontWeight.w100,
              fontSize: 30,
            ),
          ),
        )
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Happy 24th Cake Day Bro!!",
            style: TextStyle(
              fontFamily: "Handlee",
              fontWeight: FontWeight.w100,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarouselSlider(
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
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () { Navigator.pushNamed(context, "/wishes"); },
                  child: const Text(
                    "WISHES",
                    style: TextStyle(
                      fontFamily: "Handlee",
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                    ),
                  ),
                )
              )
            ],
          );
        }
      ),
    );
  }
}
