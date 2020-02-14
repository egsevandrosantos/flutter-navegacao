import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegador/app/modules/screen4/screen4_page.dart';

class Screen3Page extends StatefulWidget {
  final String title;
  const Screen3Page({Key key, this.title = "Screen3"}) : super(key: key);

  @override
  _Screen3PageState createState() => _Screen3PageState();
}

class _Screen3PageState extends State<Screen3Page> {
  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context).settings.name; // Nome da rota atual
    args = ModalRoute.of(context).settings.arguments; // Argumentos vindo da tela anterior
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          //Navigator.popUntil(context, ModalRoute.withName('/')); // Feche todas as telas até a tela de rota '/'
          /*Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(
            builder: (context) => Screen4Page()
          ), ModalRoute.withName('/screen2'));*/ // Navega para a screen4 e fecha todas entra screen4 e screen2
          Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(
            builder: (context) => Screen4Page()
          ), (route) => false); // Navega para a screen4 e fecha todas as rotas pois nenhuma bate a especificação false
        },
      ),
    );
  }
}
