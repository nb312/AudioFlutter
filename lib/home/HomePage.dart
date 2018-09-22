import 'package:flutter/material.dart';

///
/// Created by NieBin on 18-9-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
const image_root = "assets/drawable_xxhdpi_v4";

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
    var top = Container(
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
    return Scaffold(
        appBar: AppBar(
      title: top,
    ));
  }
}
