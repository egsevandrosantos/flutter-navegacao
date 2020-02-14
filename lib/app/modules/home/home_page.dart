import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:navegador/app/modules/great_grand_father/great_grand_father_page.dart';
import 'package:navegador/app/widgets/counter_provider/counter_provider_widget.dart';

import 'home_controller.dart';
import 'home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeModule.to.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.canPop(context)) // Posso fechar essa rota? Tem algo em baixo na pilha?
              Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Observer(
              builder: (_) {
                return Text('Valor fora: ' + this._controller.value.toString());
              },
            ),
            Observer(
              builder: (_) {
                return CounterProviderInheritedWidget(
                  this._controller.value,
                  child: GreatGrandFatherPage(),
                );
                //return GreatGrandFatherPage();
              },
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2Page()));
          //final result = await Navigator.pushNamed(context, '/screen2');
          //print(result);
          //Navigator.pushNamed(context, '/greatGrandFather');
          this._controller.increment();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
