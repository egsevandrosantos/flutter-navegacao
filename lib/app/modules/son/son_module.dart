import 'package:navegador/app/./modules/son/son_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/son/son_page.dart';

class SonModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SonController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SonPage()),
      ];

  static Inject get to => Inject<SonModule>.of();
}
