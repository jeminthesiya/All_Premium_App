
import 'package:all_premium/OTT/provider/OTT_Provider.dart';
import 'package:all_premium/OTT/view/Intro_Screen.dart';
import 'package:all_premium/OTT/view/linkurl.dart';
import 'package:all_premium/OTT/view/logoes_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OTT_Providr(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Intro_SCreen(),
          'all':(context) => OTT_Screen(),
          'new':(context) => Link_Screen(),
        },
      ),
    ),
  );
}
