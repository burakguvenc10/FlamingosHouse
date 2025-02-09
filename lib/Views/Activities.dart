import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Activities extends StatefulWidget {
  @override
  _Activities createState() => _Activities();
}

class _Activities extends State<Activities> {

  final List<String> imageList = [
    "assets/activity/kolektifArt.jpg",
    "assets/activity/yoga.jpg",
    "assets/activity/mask.jpg",
    "assets/activity/seramik.jpg",
    "assets/activity/boyama.jpg",
    "assets/activity/coupleArt.jpg",
    "assets/activity/hamakYoga.jpg",
    "assets/activity/bezCanta.jpg",
    "assets/activity/yuzYoga.jpg",
    "assets/activity/salsa.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return Image.asset(imageList[index], fit: BoxFit.cover);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 10.0
      ),
      padding: EdgeInsets.all(10),
      scrollDirection: Axis.vertical,
      reverse: false,
      physics: BouncingScrollPhysics(),

    );
  }
}