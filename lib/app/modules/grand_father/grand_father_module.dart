import 'package:navegador/app/./modules/grand_father/grand_father_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/grand_father/grand_father_page.dart';

class GrandFatherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => GrandFatherController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => GrandFatherPage()),
      ];

  static Inject get to => Inject<GrandFatherModule>.of();
}
