import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Flamingo extends StatefulWidget {
  @override
  _Flamingo createState() => _Flamingo();
}

class _Flamingo extends State<Flamingo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Flamingo")
        ],
      ),
    );
  }
}