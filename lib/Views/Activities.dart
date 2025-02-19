import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Activities extends StatefulWidget {
  @override
  _Activities createState() => _Activities();
}

class _Activities extends State<Activities> {

  final List<String> cardImageList = [
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

  final List<String> cardTitleList = [
    "Kolektif Art",
    "Yoga",
    "Maske Workshop",
    "Seramik Boyama",
    "Boyama",
    "Vine&Couple Art",
    "Hamak Yoga",
    "Bez Çanta-Mum Şamdan",
    "Yüz Yoga",
    "Salsa Bachata",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return Card(
          shadowColor: Colors.blueGrey,
          child: Container(
            child: Column(
              children: [
                Column(
                    children: [
                      Image.asset(cardImageList[index],height: 140,width:MediaQuery.sizeOf(context).width,fit: BoxFit.cover,),

                      Container(
                        color: Colors.grey.shade200,
                        child: Center(
                            child: Text(cardTitleList[index],style: TextStyle(fontSize: 14,color: Colors.black87,fontFamily: 'Arimo-Bold'),textAlign: TextAlign.center)
                        ),
                      ),
                    ],
                ),
              ],
            ),
          ),
        );
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