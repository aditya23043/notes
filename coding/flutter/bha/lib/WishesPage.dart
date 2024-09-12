import 'package:bha/WishTemplate.dart';
import 'package:flutter/material.dart';

class WishesPage extends StatelessWidget {
  const WishesPage({super.key});

  static const String momWish = """
My Sweetheart beta,
 You are not just a part of my world, you are my entire world. You are the best thing in my life. I may have given you the gift of life but you gave me a reason to live. I love you with all my heart and I am proud of you!
 May dear God watch over you each day. May you be safe, happy and in pink of your health.
 My heart overflows with love and pride for you. Never forget how special you are to me and I'll always be your biggest supporter.
Love Mom <3
    """;

  static const String naniWish = """
Happy Birthday my dearmost beta
Lots of Love and kisses with tight hugs!!
May your this Birthday be the happiest of all the Birthdays till now because today you are going to celebrate your Birthday in New York! Keep Smiling, keep shining and keep rising. My loving beta, may all your dreams come true very soon. God is showering his celestial blessings upon you my dear.
My love and blessings are always with you my love.
Enjoy your Birthday with heartful of love and happiness.
May Universe bless you with every thing which you like to have, may my shining star shine more bright day by day to the fullest and reach soon to his special wish.
Missing you a lot and blessing you from the deepest core of my heart.
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff181a1b),
        title: const Text(
          "Wishes",
          style: TextStyle(
            fontFamily: "Handlee",
            fontWeight: FontWeight.w100,
            fontSize: 30,
          ),
        ),
      ),
      body: const Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(""),
                  Text(""),
                  WishTemplate(wish: momWish, author: "Mom"),
                  WishTemplate(wish: naniWish, author: "Nani"),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
