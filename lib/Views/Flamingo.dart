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
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: Text('Basic Alert'),
                onPressed: () => showAlert(context),
              ),
            ],
        ),
      ),
    );
  }
}

@override
void initState() {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    //showAlert(context);
  });
}

void showAlert(BuildContext context){
  Alert(
    context: context,
    title: "Neden Flamingo?",
    style: AlertStyle(titleStyle: TextStyle(fontSize: 25,color: Colors.black,fontFamily:'Arimo-Bold',)),
    desc: "Flamingo denge, duyarlılık, yeniden doğuş, fedakarlık, çekicilik ve zarafetin sembolüdür ve dört elementle ilişkilendirilir:\n"
        " Su, hava, ateş ve toprak. Kendini beslemek için daldığı su, ruhu, insan ruhunu ve arınmayı temsil eder. Hava, maneviyatımızdaki görünmezin, uçuşun sembolüdür",
    image: Image.asset("assets/flamingo.png",width: 100,height: 100,)
  ).show();
}