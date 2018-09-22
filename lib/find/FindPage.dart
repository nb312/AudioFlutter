import 'package:flutter/material.dart';

///
/// Created by NieBin on 18-9-22
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///

class FindPage extends StatefulWidget {
  @override
  State<FindPage> createState() {
    return FindState();
  }
}

class FindState extends State<FindPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Page"),
      ),
    );
  }
}
