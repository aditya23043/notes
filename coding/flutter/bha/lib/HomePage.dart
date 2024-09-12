import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


final List<String> imgList = [
  './assets/images/1.jpg',
  './assets/images/2.jpg',
  './assets/images/3.jpg',
  './assets/images/4.jpg',
  './assets/images/5.jpg',
  './assets/images/6.jpg',
  './assets/images/7.jpg',
  './assets/images/8.jpg',
  './assets/images/9.jpg',
  './assets/images/10.jpg',
  './assets/images/11.jpg',
  './assets/images/12.jpg',
  './assets/images/13.jpg',
  './assets/images/14.jpg',
  './assets/images/15.jpg',
  './assets/images/16.jpg',
  './assets/images/17.jpg',
  './assets/images/18.jpg',
  './assets/images/19.jpg',
  './assets/images/20.jpg',
  './assets/images/21.jpg',
  './assets/images/22.jpg',
  './assets/images/23.jpg',
  './assets/images/24.jpg',
  './assets/images/25.jpg',
  './assets/images/26.jpg',
  './assets/images/27.jpg',
  './assets/images/28.jpg',
  './assets/images/29.jpg',
  './assets/images/30.jpg',
  './assets/images/31.jpg',
  './assets/images/32.jpg',
  './assets/images/33.jpg',
  './assets/images/34.jpg',
  './assets/images/35.jpg',
  './assets/images/36.jpg',
  './assets/images/37.jpg',
  './assets/images/38.jpg',
  './assets/images/39.jpg',
  './assets/images/40.jpg',
  './assets/images/41.jpg',
  './assets/images/42.jpg',
  './assets/images/43.jpg',
  './assets/images/44.jpg',
  './assets/images/45.jpg',
  './assets/images/46.jpg',
  './assets/images/47.jpg',
  './assets/images/48.jpg',
  './assets/images/49.jpg',
  './assets/images/50.jpg',
  './assets/images/51.jpg',
  './assets/images/52.jpg',
  './assets/images/53.jpg',
  './assets/images/54.jpg',
  './assets/images/55.jpg',
  './assets/images/56.jpg',
  './assets/images/57.jpg',
  './assets/images/58.jpg',
  './assets/images/59.jpg',
  './assets/images/60.jpg',
  './assets/images/61.jpg',
  './assets/images/62.jpg',
  './assets/images/63.jpg',
  './assets/images/64.jpg',
  './assets/images/65.jpg',
  './assets/images/66.jpg',
  './assets/images/67.jpg',
  './assets/images/68.jpg',
  './assets/images/69.jpg',
  './assets/images/70.jpg',
  './assets/images/71.jpg',
  './assets/images/72.jpg',
  './assets/images/73.jpg',
  './assets/images/74.jpg',
  './assets/images/75.jpg',
  './assets/images/76.jpg',
  './assets/images/77.jpg',
  './assets/images/78.jpg',
  './assets/images/79.jpg',
  './assets/images/80.jpg',
  './assets/images/81.jpg',
  './assets/images/82.jpg',
  './assets/images/83.jpg',
  './assets/images/84.jpg',
  './assets/images/85.jpg',
  './assets/images/86.jpg',
  './assets/images/87.jpg',
  './assets/images/88.jpg',
  './assets/images/89.jpg',
  './assets/images/90.jpg',
  './assets/images/91.jpg',
  './assets/images/92.jpg',
  './assets/images/93.jpg',
  './assets/images/94.jpg',
  './assets/images/95.jpg',
  './assets/images/96.jpg',
  './assets/images/97.jpg',
  './assets/images/98.jpg',
  './assets/images/99.jpg',
  './assets/images/100.jpg',
  './assets/images/101.jpg',
  './assets/images/102.jpg',
  './assets/images/103.jpg',
  './assets/images/104.jpg',
  './assets/images/105.jpg',
  './assets/images/106.jpg',
  './assets/images/107.jpg',
  './assets/images/108.jpg',
  './assets/images/109.jpg',
  './assets/images/110.jpg',
  './assets/images/111.jpg',
  './assets/images/112.jpg',
  './assets/images/113.jpg',
  './assets/images/114.jpg',
  './assets/images/115.jpg',
  './assets/images/116.jpg',
  './assets/images/117.jpg',
  './assets/images/118.jpg',
  './assets/images/119.jpg',
  './assets/images/120.jpg',
  './assets/images/121.jpg',
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
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
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
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
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
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff222222)),
                    padding: WidgetStatePropertyAll(EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10)),
                  ),
                  child: const Text(
                    "WISHES",
                    style: TextStyle(
                      fontFamily: "Handlee",
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(2, 2),
                          blurRadius: 2,
                        ),
                      ],
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
