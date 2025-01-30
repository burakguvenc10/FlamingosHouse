import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'Views/Components/Appbar.dart';
import 'Views/Components/Bottombar.dart';
import 'Views/Home.dart';
import 'Views/Menu.dart';
import 'Views/Flamingo.dart';
import 'Views/Activities.dart';
import 'Views/Schedule.dart';

void main() {
  //Ekran Döndürme
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
      ]).then((_) {
      runApp(MyApp());
  });
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Arimo-Regular',
      ),
    );
  }
}


class Main extends StatefulWidget {
  @override
  _Main createState() => _Main();
}

class _Main extends State<Main> {
  //Başlangıçtaki tab index
  int _selectedIndex = 0;
  final PageController pageController = PageController();

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width,56.0), child: Appbar()),
      bottomNavigationBar: Bottombar(onTap: onTabTapped,),
      body: PageView(
       controller: pageController,
       onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
       },
        children: <Widget>[
          Home(),
          Menu(),
          Flamingo(),
          Activities(),
          Schedule()
        ],
      ),
    );
  }
}


