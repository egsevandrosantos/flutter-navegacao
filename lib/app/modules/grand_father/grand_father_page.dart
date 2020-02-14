import 'package:flutter/material.dart';
import 'package:navegador/app/modules/father/father_page.dart';

class GrandFatherPage extends StatelessWidget {
  final title;

  const GrandFatherPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 370,
        height: 220,
        color: Colors.purple,
        child: FatherPage(),
      ),
    );
  }
}
