import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///  Created by NieBin
///  Github: https://github.com/nb312
///  Email: niebin312@gmail.com

void main() => runApp(HomeChangeApp());

class HomeChangeApp extends StatefulWidget {
  @override
  State<HomeChangeApp> createState() {
    return HomeState();
  }
}

const bottomStr = ["首页", "我听", "发现", "我的"];
const images = [
  ["host_home_page_tab_01.png", "host_home_page_tab_02.png"],
  ["host_my_listen_tab_01.png", "host_my_listen_tab_02.png"],
  ["host_find_tab_01.png", "host_find_tab_02.png"],
  ["host_mine_tab_01.png", "host_mine_tab_02.png"]
];

class HomeState extends State<HomeChangeApp> {
  int curIndex = 0;

  Text text(var pos) {
    var textColor = curIndex == pos ? Colors.redAccent : Colors.blueGrey;
    var fontSize = curIndex == pos ? 14.0 : 12.0;
    return Text(
      bottomStr[pos],
      style: TextStyle(color: textColor, fontSize: fontSize),
    );
  }

  Image getAssetImage(var pos) {
    var path = images[pos][curIndex == pos ? 1 : 0];
    var size = curIndex == pos ? 46.0 : 40.0;
    return Image.asset(
      "assets/drawable_xxhdpi_v4/$path",
      width: size,
      height: size,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.green),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Home Page",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ),
            body: Text("Hello word!"),
            floatingActionButton: FloatingActionButton(
              child: Image.asset(
                "assets/drawable_xxhdpi_v4/host_theme_global_play_default.png",
                width: 100.0,
                height: 100.0,
              ),
              onPressed: () {
                print("press the button.");
              },
            ),
            bottomNavigationBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(icon: getAssetImage(0), title: text(0)),
                BottomNavigationBarItem(icon: getAssetImage(1), title: text(1)),
                BottomNavigationBarItem(icon: getAssetImage(2), title: text(2)),
                BottomNavigationBarItem(icon: getAssetImage(3), title: text(3)),
              ],
              currentIndex: curIndex,
              onTap: (index) {
                setState(() {
                  print("index = $index");
                  curIndex = index;
                });
              },
            )));
  }
}
