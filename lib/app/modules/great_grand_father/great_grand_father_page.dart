import 'package:flutter/material.dart';
import 'package:navegador/app/modules/grand_father/grand_father_page.dart';

class GreatGrandFatherPage extends StatelessWidget {
  final title;

  const GreatGrandFatherPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 250,
      color: Colors.red,
      child: GrandFatherPage()
    );
  }
}
