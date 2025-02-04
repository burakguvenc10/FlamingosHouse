import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Activities extends StatefulWidget {
  @override
  _Activities createState() => _Activities();
}

class _Activities extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBFFFA),
      child: Column(
        children: [
          Text("Activities")
        ],
      ),
    );
  }
}