import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  final CardSwiperController controller = CardSwiperController();

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/flamingosHouse2.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/coffe.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/breakfeast.webp",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/burger.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/coctail.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/coffeView.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      alignment: Alignment.center,
      child: Image.asset("assets/icedLatte.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBFFFA),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            //Header Avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

                SizedBox(
                  width: 25,
                ),

                CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

                SizedBox(
                  width: 25,
                ),

                CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

              ],
            ),
            SizedBox(height: 20,),

            Card(
              shadowColor: Colors.grey,
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                height: 260,
                padding: EdgeInsets.all(5),
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