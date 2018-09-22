import 'package:flutter/material.dart';

///
/// Created by NieBin on 18-9-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
const image_root = "assets/drawable_xxhdpi";
const image_root_x = "assets/drawable_xhdpi";

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomeState();
  }
}

const titles = [
  "推荐",
  "会员",
  "小说",
  "直播",
  "儿童",
  "广播",
  "精品",
  "相声",
  "人文",
  "历史",
  "段子",
  "音乐"
];

class HomeState extends State<HomePage> {
  int curIndex = 0;

  Widget buildItem(context, index) {
    var item = Text(titles[index],
        style: TextStyle(
            color: curIndex == index ? Colors.white : Colors.deepOrange,
            fontSize: curIndex == index ? 18.0 : 12.0));
    return InkWell(
      child: Container(
        width: 60.0,
        height: 40.0,
        child: Center(child: item),
      ),
      onTap: () {
        setState(() {
          curIndex = index;
        });
        print("Item onclick.");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var top_1 = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemBuilder: buildItem,
                itemCount: titles.length,
                scrollDirection: Axis.horizontal),
          ),
          Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: GestureDetector(
                onTap: () {
                  print("This is 分类.");
                },
                child: Text(
                  "分类",
                  style: TextStyle(color: Colors.blue, fontSize: 16.0),
                ),
              ))
        ],
      ),
    );
    var top_2 = Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                    "$image_root_x/component_icon_nav_sousuo_normal_low.png",
                    width: 10.0,
                    height: 10.0),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      print("this is search.");
                    },
                    child: Text(
                      "红楼梦 | 牛大宝 有声书 | 十宗嘴",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
          )),
          GestureDetector(
            onTap: () {
              print("time is your.");
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
              child: Image.asset(
                  "$image_root/host_theme_ic_title_bar_history_gold.png",
                  width: 20.0,
                  height: 20.0),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("download file.");
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, .0),
              child: Image.asset(
                  "$image_root/host_theme_ic_title_bar_download_gold.png",
                  width: 20.0,
                  height: 20.0),
            ),
          )
        ],
      ),
    );
    var top = Container(
      child: Column(
        children: <Widget>[
          Expanded(child: top_1),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
            child: top_2,
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: top,
      ),
    );
  }
}
