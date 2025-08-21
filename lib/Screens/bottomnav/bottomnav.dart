import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winstappa/Screens/Heart/heartscreen.dart';
import 'package:winstappa/Screens/Home/homescreen.dart';
import 'package:winstappa/Screens/Post/postscreen.dart';
import 'package:winstappa/Screens/Profile/profilescren.dart';
import 'package:winstappa/Screens/Search/searcgscreen.dart';
import '../../Widgets/uiwdea.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreeState();
}

class _BottomNavScreeState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_app), label: "post"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.play), label: "Video"),
            BottomNavigationBarItem(
                icon: UiWdea.CustomImage(imgurl: "profile.png"),
                label: "profile"),
          ]),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
