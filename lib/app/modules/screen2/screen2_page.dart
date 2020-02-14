import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Screen2Page extends StatefulWidget {
  final String title;
  const Screen2Page({Key key, this.title = "Screen2"}) : super(key: key);

  @override
  _Screen2PageState createState() => _Screen2PageState();
}

class _Screen2PageState extends State<Screen2Page> {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      return showDialog<bool>(context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: Text('Sem Volta'),
          actions: <Widget>[
            RaisedButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),

            RaisedButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.pop(context, true);
              },
            )
          ],
        )
      );
    }

    return WillPopScope(
      onWillPop: _onWillPop, // Intercepta botão voltar virtual ou físico do android
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.maybePop(context); // Se tiver um WillPopScope ele dispara a função do onWillPop
              },
            ),
          ),
          body: Column(
            children: <Widget>[],
          ),
          floatingActionButton: SpeedDial(
              child: Icon(Icons.keyboard_arrow_up),
              closeManually: false,
              shape: CircleBorder(),
              children: [
                SpeedDialChild(
                  label: 'Increment',
                  child: Icon(Icons.add),
                  onTap: () {
                    // Navigator.maybePop(context); // Se tiver um WillPopScope ele dispara a função do onWillPop
                    //Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => Screen3Page()));
                    Navigator.pushNamed(context, '/screen3',
                        arguments: "title");
                    /*Navigator.push(context, CupertinoPageRoute(builder: (context) => Screen3Page(),
                  settings: RouteSettings(name: '/screen3')));*/ // -> Definindo nela mesmo que o nome da rota é '/screen3'
                    /*Navigator.push(context, CupertinoPageRoute(builder: (context) => Screen3Page(),
                  settings: RouteSettings(name: '/screen3', arguments: "title")));*/
                  },
                ),
                SpeedDialChild(
                    label: 'Close',
                    child: Icon(Icons.close),
                    onTap: () {
                      Navigator.pop(context, 'Retorno');
                    })
              ])),
    );
  }
}
