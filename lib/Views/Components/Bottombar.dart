import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';

class Bottombar extends StatelessWidget {
  final Function(int) onTap; // onTap fonksiyonu parametre olarak alınır

  Bottombar({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      style: TabStyle.fixedCircle,
      height: 55,
      backgroundColor: Color(0xff66cdaa),
      activeColor: Color(0xffee1290),
      items: [
        TabItem(icon: CupertinoIcons.home, title: 'Anasayfa'),
        TabItem(icon: CupertinoIcons.book, title: 'Menü'),
        TabItem(icon: Image.asset("assets/flamingoLogo.png",width: 50,height: 50)),
        TabItem(icon: CupertinoIcons.guitars, title: 'Aktiviteler'),
        TabItem(icon: CupertinoIcons.calendar_today, title: 'Program'),
      ],
      initialActiveIndex: 0,
      onTap: onTap
    );
  }

  @override
  Size get prefferredSize => Size.fromHeight(kToolbarHeight);
}