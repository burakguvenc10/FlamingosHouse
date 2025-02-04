import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Flamingo extends StatefulWidget {
  @override
  _Flamingo createState() => _Flamingo();
}

class _Flamingo extends State<Flamingo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBFFFA),
      child: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Row(
                children: [
                    Image.asset(
                        'assets/flamingo1.jpg',
                        height: 150,
                        width:  MediaQuery.sizeOf(context).width/2,
                        fit:BoxFit.fill
                    ),

                    Image.asset(
                        'assets/flamingo2.jpg',
                        height: 150,
                        width:  MediaQuery.sizeOf(context).width/2,
                        fit:BoxFit.fill
                    ),
                ],
              ),

              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/flamingosHouse.jpg",width: MediaQuery.sizeOf(context).width,),

                    Image.asset("assets/locale.png",width: 50, height: 50,),

                    Text("Flamingos House",style: TextStyle(fontSize: 18,color: Colors.black87,fontFamily: 'Arimo-Bold'),),

                    Text("Sosyal Kulüp",style: TextStyle(fontSize: 15,color: Colors.blueGrey.shade200,fontFamily: 'Arimo-Bold'),),

                    Text(" Canlı bir kafe & etkinliklerle dolu sosyal kulüp!\n "+
                      " A vibrant lifestyle cafe & social club with activities!\n "+
                      " Açık / Open 8.00-01.00h 🦩\n" +
                      " +90 543 262 17 00\n" +
                      " Cengiz Topel cad. No: 80,Ulucami Mahallesi, Köycegiz/Mugla" ,style: TextStyle(fontSize: 12,color: Colors.black87,fontFamily: 'Arimo-Regular'),)

                  ],
                )


              ),

            ],
        ),
      ),
    );
  }
}

