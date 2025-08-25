import 'package:flutter/material.dart';
import 'package:winstappa/Widgets/uiwdea.dart';

class HomeScreen extends StatelessWidget {
  var arrcontent = [
    {"img": "assets/images/blal.png", "name": "bila_kjl"},
    {"img": "assets/images/st2.png", "name": "abu_hid"},
    {"img": "assets/images/st3.png", "name": "cr7"},
    {"img": "assets/images/st4.png", "name": "snns_58h"},
    {"img": "assets/images/st1.png", "name": "sjj_jsk"},
    {"img": "assets/images/st2.png", "name": "ai_l8jsj"},
    {"img": "assets/images/st3.png", "name": "anj_lkhg8s"},
    {"img": "assets/images/st4.png", "name": "ajhs_,nnj"},
  ];

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
          SizedBox(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage(arrcontent[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: arrcontent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      arrcontent[index]["name"].toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                },
                itemCount: arrcontent.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 375,
            color: Colors.black12,
            child: ListTile(
              leading: UiWdea.CustomImage(imgurl: "blal.png"),
              title: Text('bilal'),
              subtitle: Text(
                "lbnan",
                style: TextStyle(fontSize: 12),
              ),
              trailing: UiWdea.CustomImage(imgurl: "btn.png"),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(),
            child: UiWdea.CustomImage(imgurl: "post.png"),
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              UiWdea.CustomImage(imgurl: "like.png"),
              SizedBox(
                width: 20,
              ),
              UiWdea.CustomImage(imgurl: "communt.png"),
              SizedBox(
                width: 20,
              ),
              UiWdea.CustomImage(imgurl: "reto.png"),
              SizedBox(
                width: 20,
              ),
              UiWdea.CustomImage(imgurl: "share.png"),
              SizedBox(
                width: 200,
              ),
              UiWdea.CustomImage(imgurl: "save.png"),
            ],
          ),
          Row(
            children: [
              Text("10k"),
              SizedBox(
                width: 25,
              ),
              Text("2k"),
              SizedBox(
                width: 25,
              ),
              Text("5k"),
              SizedBox(
                width: 25,
              ),
              Text("3k"),
              SizedBox(
                width: 200,
              ),
            ],
          ),
          Text("champion lege and ajsjsjdjd")
        ],
      ),
    );
  }
}
