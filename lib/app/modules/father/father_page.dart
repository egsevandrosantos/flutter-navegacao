import 'package:flutter/material.dart';
import 'package:navegador/app/modules/son/son_page.dart';

class FatherPage extends StatelessWidget {
  final title;

  const FatherPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        color: Colors.blue,
        child: SonPage()
      ),
    );
  }
}
