import 'package:flutter/material.dart';

class Screen4Page extends StatefulWidget {
  final String title;
  const Screen4Page({Key key, this.title = "Screen4"}) : super(key: key);

  @override
  _Screen4PageState createState() => _Screen4PageState();
}

class _Screen4PageState extends State<Screen4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      )
    );
  }
}
