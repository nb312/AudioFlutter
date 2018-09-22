import 'package:flutter/material.dart';

///
/// Created by NieBin on 18-9-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
class MyListenPage extends StatefulWidget {
  @override
  State<MyListenPage> createState() {
    return MyListenState();
  }
}

class MyListenState extends State<MyListenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Listen Page"),
      ),
    );
  }
}
