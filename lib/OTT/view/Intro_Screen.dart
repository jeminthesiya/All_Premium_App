import 'dart:async';

import 'package:flutter/material.dart';

class Intro_SCreen extends StatefulWidget {
  const Intro_SCreen({Key? key}) : super(key: key);

  @override
  State<Intro_SCreen> createState() => _Intro_SCreenState();
}

class _Intro_SCreenState extends State<Intro_SCreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, "all");
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 250,
                width: 250,
              ),
            ),
            Text(
              "PREMIUM APP",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Watch Best Movies & Web-Series",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
