import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Menu extends StatefulWidget {
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  late WebViewController _controller;
  var loadingPercentage = 0;
  String URL = "https://flamingocafe.qr.menulux.com/#!/categories";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(controller: _controller,
        ),
        loadingPercentage < 100
            ? LinearProgressIndicator(
          color: Colors.pinkAccent,
          value: loadingPercentage / 100,
        )
            : Container()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              loadingPercentage = 0;
            });
          },
          onProgress: (progress) {
            setState(() {
              loadingPercentage = progress;
            });
          },
          onPageFinished: (url) {
            setState(() {
              loadingPercentage = 100;
            });
          },
          onHttpError: (error) {
            //Hata!
          }
      ))
      ..loadRequest(Uri.parse(URL));
  }
}