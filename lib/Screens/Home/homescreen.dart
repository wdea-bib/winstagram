import 'package:flutter/material.dart';
import 'package:winstappa/Widgets/uiwdea.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiWdea.CustomImage(imgurl: "Logo.png"),
        leadingWidth: 100,
        // title: UiWdea.CustomImage(imgurl:"" ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
          IconButton(
              onPressed: () {}, icon: UiWdea.CustomImage(imgurl: "me.png"))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                
              )
            ],
          )
        ],
      ),
    );
  }
}
