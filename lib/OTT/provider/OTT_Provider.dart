import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OTT_Providr extends ChangeNotifier {
  WebViewController? webViewController;

  void initcontriller(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${linkList[index]}"),
    );
  }

  List logoList = [
    "assets/images/airtel.webp",
    "assets/images/disney.webp",
    "assets/images/film.webp",
    "assets/images/liv.webp",
    "assets/images/mx.webp",
    "assets/images/netflix.webp",
    "assets/images/prime.webp",
    "assets/images/voot.webp",
    "assets/images/zee5.webp",
  ];

  List linkList = [
    "https://www.airtelxstream.in/",
    "https://www.hotstar.com/in/",
    "https://www.filmbox.com/",
    "https://www.sonyliv.com/",
    "https://www.mxplayer.in/",
    "https://www.netflix.com/in/",
    "https://www.primevideo.com/",
    "https://www.voot.com/",
    "https://www.zee5.com/",
  ];
}
