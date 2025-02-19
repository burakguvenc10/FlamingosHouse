import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:social_media_buttons/social_media_buttons.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final CardSwiperController controller = CardSwiperController();
  AnimatedTextController myAnimatedTextController = AnimatedTextController();
  final InAppReview inAppReview = InAppReview.instance;

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/flamingosHouse2.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/lists.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/coffe.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/breakfeast.webp",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/burger.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/coctail.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/coffeView.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/drinkEat/icedLatte.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBFFFA),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2,),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Color(0xffB9F3E4),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "HOŞ GELDİNİZ🦩 ",
                                  textStyle: const TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffFF74B1),
                                      fontFamily: 'Arimo-Bold',
                                      letterSpacing: 1.2,
                                  ),
                                  speed: const Duration(milliseconds: 80),
                                ),
                              ],
                              totalRepeatCount: 5,
                              pause: const Duration(milliseconds: 100),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                              controller: myAnimatedTextController
                          ),

                          Container(
                            height: 100,
                            child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    "Köyceğiz gölü manzaralı ferah, sıcak bir kafe ortamında leziz içeceklerin tadını çıkarırken aynı zamanda sosyal kulüp etkinlikleriyle yeni dostluklar kurabilir," +
                                        " keyifli anlar yaşayabilirsiniz.\nRenkli dünyamıza katılın ve Flamingos House’un canlı atmosferini Yakından Keşfedin!",
                                    textStyle: const TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff31363F),
                                        fontFamily: 'Arimo-Regular',
                                    ),
                                    speed: const Duration(milliseconds: 40),
                                  ),
                                ],
                                totalRepeatCount: 1,
                                pause: const Duration(milliseconds: 80),
                                displayFullTextOnTap: true,
                                stopPauseOnTap: true,
                                controller: myAnimatedTextController
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Card(
              shadowColor: Colors.grey,
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 260,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff31363F),Color(0xff66cdaa)]
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Column(
                    children: [
                      Flexible(
                        child: Stack(
                          children: [
                            CardSwiper(
                              controller: controller,
                              cardsCount: cards.length,
                              onSwipe: _onSwipe,
                              onUndo: _onUndo,
                              isLoop: true,
                              allowedSwipeDirection: AllowedSwipeDirection.all(),
                              numberOfCardsDisplayed: 1,
                              backCardOffset: const Offset(25, 25),
                              padding: const EdgeInsets.all(5.0),
                              cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      backgroundColor: Colors.blueGrey.shade100,
                                      onPressed: () => controller.swipe(CardSwiperDirection.left),
                                      child: const Icon(Icons.keyboard_arrow_left),
                                      splashColor: Colors.pinkAccent.shade100,
                                    ),
                                    SizedBox(width: 10,),
                                    FloatingActionButton(
                                      backgroundColor: Colors.blueGrey.shade100,
                                      onPressed: () =>
                                          controller.swipe(CardSwiperDirection.right),
                                      child: const Icon(Icons.keyboard_arrow_right),
                                      splashColor: Colors.pinkAccent.shade100,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                 ),
                )
              ),
            ),

            SizedBox(height: 15,),

            Text("Sosyal Medya Hesaplarımız",
                style:TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.normal,
                letterSpacing: 1.2,
                color: Color(0xffFF74B1),
                fontFamily: 'Arimo-Bold'
                ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton.whatsapp(
                  size: 30,
                  onTap: () {
                    print('onTap ');
                  },
                ),
                SocialMediaButton.instagram(
                  size: 30,
                  onTap: () {
                    print('onTap ');
                  },
                ),
                SocialMediaButton.linkedin(
                  size: 30,
                  onTap: () {
                    print('onTap ');
                  },
                ),
              ],
            ),

            SizedBox(height: 15,),

            ElevatedButton(
              onPressed: (){
                inAppReview.openStoreListing(appStoreId: 'com.duolingo');
              },
              child: Text('Bizi Değerlendirin',
                style:TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff31363F),
                  fontFamily: 'Arimo-Bold'
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.pink,
                  size: 15.0,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.pink,
                  size: 12.0,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.pink,
                  size: 10.0,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.pink,
                  size: 8.0,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  color: Colors.pink,
                  size: 6.0,
                ),
              ],
            ),
            Container(
              height: 60,
              width: 100,
              child: Image.asset("assets/stores.png"),
            ),
          ],
        ),
      ),
    );
  }
}

bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
    ) {
  return true;
}

bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
    ) {
  return true;
}