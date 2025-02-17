import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Components/backAppbar.dart';
import 'package:flutter/cupertino.dart';

class Notifications extends StatefulWidget {
  @override
  _Notification createState() => _Notification();
}

class _Notification extends State<Notifications> {

  final List<String> pushedNotifications = [
    "assets/activity/yoga.jpg",
    "assets/activity/yoga.jpg",
    "assets/activity/mask.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width,56.0), child: backAppbar()),
      body: Container(
        // /color: Color(0xffECFFFA),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: pushedNotifications.length,
                itemBuilder: (context, i) =>
                    ListTile(
                        title: Text("aadsd"),
                        leading: Text('data'),
                        subtitle: Text('data'),
                    ),
              reverse: false,
            ),

      ),
    );
  }
}