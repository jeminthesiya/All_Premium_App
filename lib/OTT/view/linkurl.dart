import 'package:all_premium/OTT/provider/OTT_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Link_Screen extends StatefulWidget {
  const Link_Screen({Key? key}) : super(key: key);

  @override
  State<Link_Screen> createState() => _Link_ScreenState();
}

class _Link_ScreenState extends State<Link_Screen> {
  OTT_Providr? Otrue;
  OTT_Providr? Ofalse;

  @override
  Widget build(BuildContext context) {
    Otrue = Provider.of<OTT_Providr>(context, listen: true);
    Ofalse = Provider.of<OTT_Providr>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: Ofalse!.webViewController!),
      ),
    );
  }
}
