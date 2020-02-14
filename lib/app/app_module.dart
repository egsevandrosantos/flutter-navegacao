import 'package:navegador/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:navegador/app/app_widget.dart';
import 'package:navegador/app/modules/father/father_module.dart';
import 'package:navegador/app/modules/grand_father/grand_father_module.dart';
import 'package:navegador/app/modules/great_grand_father/great_grand_father_module.dart';
import 'package:navegador/app/modules/home/home_module.dart';
import 'package:navegador/app/modules/screen2/screen2_module.dart';
import 'package:navegador/app/modules/screen3/screen3_module.dart';
import 'package:navegador/app/modules/screen4/screen4_module.dart';
import 'package:navegador/app/modules/son/son_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        // Navigator.defaultRouteName // Nome da rota default
        Router('/', module: HomeModule()),
        Router('/screen1', module: HomeModule()),
        Router('/screen2', module: Screen2Module()),
        Router('/screen3', module: Screen3Module()),
        Router('/screen4', module: Screen4Module()),
        Router('/greatGrandFather', module: GreatGrandFatherModule()),
        Router('/grandFather', module: GrandFatherModule()),
        Router('/father', module: FatherModule()),
        Router('/child', module: SonModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
