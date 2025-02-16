import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Notifications.dart';

class backAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Center(child: Text("BİLDİRİMLER",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: 'Arimo-Bold',fontSize: 18),),),
      backgroundColor: Colors.black87,
      leading: new IconButton(
          alignment: Alignment.centerLeft,
          icon: Icon(Icons.arrow_back,color: Colors.white,size: 22,),
          onPressed:(){
            Navigator.pop(context);
          }
      ),
      actions: <Widget> [
        SizedBox(
          width: 35,
        )
      ],

    );
  }

  @override
  Size get prefferredSize => Size.fromHeight(kToolbarHeight);
}

