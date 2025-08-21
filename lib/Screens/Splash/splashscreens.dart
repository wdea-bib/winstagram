import 'dart:async';

import 'package:flutter/material.dart';
import 'package:winstappa/Widgets/uiwdea.dart';

import '../Login/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        UiWdea.CustomImage(imgurl: "instagram.png"),
        UiWdea.CustomImage(imgurl: "Logo.png"),
        Text(" تطوير وديع الزمر")
      ])),
    );
  }
}
