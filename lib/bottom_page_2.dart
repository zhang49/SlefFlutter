import 'package:flutter/material.dart';

class BottomPage2 extends StatefulWidget{
  @override
  State createState() {
    return _State();
  }
}

class _State extends State<BottomPage2>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body:
      new Text("BottomPage2",textDirection: TextDirection.ltr),
    );
  }
}