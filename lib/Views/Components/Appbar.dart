import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Notifications.dart';

class Appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Center(child: Text("FLAMINGOS HOUSE",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: 'Arimo-Bold',fontSize: 18),),),
      backgroundColor: Colors.black87,
      leading: new IconButton(
          icon: Icon(Icons.language_outlined,color: Colors.white,size: 22,),
          onPressed:(){
            //
          }
      ),
      actions: <Widget> [
        IconButton(
            icon: Icon(Icons.notifications_active_sharp,color: Colors.white,size: 22,),
            onPressed:(){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications())
              );
            }
        ),
      ],
    );
  }

  @override
  Size get prefferredSize => Size.fromHeight(kToolbarHeight);
}

