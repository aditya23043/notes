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

  static const String adiWish = """
Wasssssuuppp Budddddyy,
HAPPY BADDHHAYYY BROOOO <3
Almost 40 years old!! I cant believe it bhai. Abhi toh school se aake TV pe Phineas & Ferb and Beyblade dekhte the, then college se aake Suits, then aapke jaane se pehle Brooklyn 99 and next kya? Aaj Tak ? xD
Bro birthday bumms pending hai.
Nani and Mumma jitna lovely wishes toh nahi likh paya and like all my assignments, 11:30 pm tak hi likh rha hoon; but buddy seriously missing you and aapke door open karne wale skills (HEHEHE)
To end this message from yours truly, :alexa play careless whisper: WILL YOU BE THE VOLTAGE TO MY CURRENT FOR OUR CAPACITANCE RELATIONSHIP??? (because voltage 90deg (~9h 30m cus why not, mera app hai) lag karta hai na current se capacitor mein)
or alternatively, WILL YOU BE THE TRIPLE INTEGRAL TO MY REGION R IN A 3D SPACE? BECAUSE YOU ARE OF GREAT IMPORTANCE TO ME <3
(happy birthday once again btw!!)
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
                  WishTemplate(wish: adiWish, author: "Adi"),
                ],
              ),
            ),
          ),
        ]
      )
    );
  }
}
