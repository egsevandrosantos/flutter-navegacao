import 'package:flutter/material.dart';
import 'package:navegador/app/widgets/counter_provider/counter_provider_widget.dart';

class SonPage extends StatelessWidget {
  final title;

  const SonPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int _counter = CounterProviderInheritedWidget.of(context).counter;
    return Center(
      child: Container(
        width: 200,
        height: 120,
        color: Colors.orange,
        child: Center(
          child: Text("Valor: $_counter"),
        ),
      ),
    );
  }
}
