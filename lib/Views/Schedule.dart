import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Schedule extends StatefulWidget {
  @override
  _Schedule createState() => _Schedule();
}

class _Schedule extends State<Schedule> {
  late WebViewController _controller;
  var loadingPercentage = 0;
  String URL = "https://linktr.ee/flamingoshouse?fbclid=PAZXh0bgNhZW0CMTEAAaZJXMHdDz_cgBKgAFDXaR4PNUAQ24IYZINFHHzZSNCitZe-Dps2aO6wtyM_aem_arNrbdGuCYZCAw7da4C1Ow";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(controller: _controller,
        ),
        loadingPercentage < 100
        ?LinearProgressIndicator(
          color: Colors.pinkAccent,
          value: loadingPercentage / 100,
        )
            :Container()
      ],
    );
  }

  @override
  void initState(){
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setNavigationDelegate(NavigationDelegate(
      onPageStarted: (url) {
        setState(() {
          loadingPercentage = 0;
        });
      },
      onProgress: (progress){
        setState(() {
          loadingPercentage = progress;
        });
      },
      onPageFinished: (url) {
        setState(() {
          loadingPercentage = 100;
        });
      }
    ))
    ..loadRequest(Uri.parse(URL));
  }

}

