import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
        TabItem(icon: Icons.home, title: 'Anasayfa'),
        TabItem(icon: Icons.menu_book, title: 'Menü'),
        TabItem(icon: Image.asset("assets/flamingo.png",width: 50,height: 50)),
        TabItem(icon: Icons.sports_gymnastics, title: 'Aktivite'),
        TabItem(icon: Icons.schedule, title: 'Program'),
      ],
      initialActiveIndex: 0,
      onTap: onTap
    );
  }

  @override
  Size get prefferredSize => Size.fromHeight(kToolbarHeight);
}