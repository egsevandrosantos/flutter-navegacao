import 'package:navegador/app/./modules/great_grand_father/great_grand_father_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/great_grand_father/great_grand_father_page.dart';

class GreatGrandFatherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GreatGrandFatherController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => GreatGrandFatherPage()),
      ];

  static Inject get to => Inject<GreatGrandFatherModule>.of();
}
