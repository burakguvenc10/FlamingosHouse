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
        return Card(
          child: Container(
            child: Column(
              children: [

                Padding(padding: EdgeInsets.all(3),
                child: Column(
                  children: [
                    Image.asset(imageList[index],height: 140,width:MediaQuery.sizeOf(context).width,),

                    Container(
                      color: Colors.grey.shade200,
                      child: Center(
                          child: Text("Yoga",style: TextStyle(fontSize: 17,color: Colors.black87,fontFamily: 'Arimo-Regular'),)
                      ),
                    ),
                  ],
                 ),
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