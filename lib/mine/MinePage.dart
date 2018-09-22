import 'package:flutter/material.dart';

///
/// Created by NieBin on 18-9-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
class MinePage extends StatefulWidget {
  @override
  State<MinePage> createState() {
    return MineState();
  }
}

class MineState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mine Page"),
      ),
    );
  }
}
