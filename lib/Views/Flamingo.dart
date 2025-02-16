import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Flamingo extends StatefulWidget {
  @override
  _Flamingo createState() => _Flamingo();
}

class _Flamingo extends State<Flamingo> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600), // Zıplama süresi
    )..repeat(reverse: true);
    // Yukarı aşağı hareket için animasyon
    _animation = Tween<double>(begin: 0.0, end: -10.0) // 10px yukarı çıkacak
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffEBFFFA),
      child: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Image.asset("assets/flamingosHouse.jpg",width: MediaQuery.sizeOf(context).width),

                    SizedBox(height: 10,),

                    Center(
                      child: AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: Offset(0, _animation.value*5), // Y ekseninde hareket ettir
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Color(0xff31363F),
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/flamingoLogo.png", // Örnek bir avatar
                                  fit: BoxFit.cover,
                                  width: 90,
                                  height: 90,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Text("Flamingos House",style: TextStyle(fontSize: 18,color: Colors.black87,fontFamily: 'Arimo-Bold'),),

                    Text("Sosyal Kulüp🦩",style: TextStyle(fontSize: 15,color: Colors.blueGrey.shade200,fontFamily: 'Arimo-Bold'),),

                    SizedBox(height: 2,),
                    
                    Padding(padding: EdgeInsets.all(10),
                      child: Text("   Canlı bir kafe & etkinliklerle dolu sosyal kulüp \n "+
                          " A vibrant lifestyle cafe & social club with activities!\n "+
                          " -   Açık / Open 8.00-01.00h \n" +
                          " 📞 +90 543 262 17 00\n" +
                          " 📍 Cengiz Topel cad. No: 80,\n  Ulucami Mahallesi, Köyceğiz/Muğla" ,style: TextStyle(fontSize: 15,color: Colors.black87,fontFamily: 'Arimo-Regular'),
                      ),
                    ),
                  ],
                )
              ),
            ],
        ),
      ),
    );
  }
}

