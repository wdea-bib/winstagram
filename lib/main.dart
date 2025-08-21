import 'package:flutter/material.dart';

import 'Screens/Splash/splashscreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Winstagram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: SplashScreen());
  }
}
