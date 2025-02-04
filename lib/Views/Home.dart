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
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/flamingosHouse2.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/coffe.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/breakfeast.webp",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/burger.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/coctail.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/coffeView.jpg",fit: BoxFit.fill),
      color: Colors.white60,
    ),
    Container(
      height: 250,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
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
                    radius: 26,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

                SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                    radius: 26,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

                SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                    radius: 26,
                    backgroundColor: Color(0xff31363F),
                    child: Image.asset("assets/flamingo.png")
                ),

                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(height: 20,),

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
                    numberOfCardsDisplayed: 2,
                    backCardOffset: const Offset(25, 25),
                    padding: const EdgeInsets.all(18.0),
                    cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () => controller.swipe(CardSwiperDirection.left),
                          child: const Icon(Icons.keyboard_arrow_left),
                          splashColor: Colors.grey.shade200,
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(
                          onPressed: () =>
                              controller.swipe(CardSwiperDirection.right),
                          child: const Icon(Icons.keyboard_arrow_right),
                          splashColor: Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                ],
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