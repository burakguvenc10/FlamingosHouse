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
      height: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: Image.asset("assets/flamingo.png",),
      color: Colors.grey.shade100,
    ),
    Container(
      height: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      height: 200,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15),
      child: const Text('3'),
      color: Colors.purple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 20,),

            Text("Avatars Hikayeler"),

            SizedBox(height: 30,),

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
                    numberOfCardsDisplayed: 3,
                    backCardOffset: const Offset(25, 25),
                    padding: const EdgeInsets.all(15.0),
                    cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(
                          onPressed: () => controller.swipe(CardSwiperDirection.left),
                          child: const Icon(Icons.keyboard_arrow_left),
                          splashColor: Colors.pinkAccent,
                        ),
                        SizedBox(width: 10,),
                        FloatingActionButton(
                          onPressed: () =>
                              controller.swipe(CardSwiperDirection.right),
                          child: const Icon(Icons.keyboard_arrow_right),
                          splashColor: Colors.pinkAccent,
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