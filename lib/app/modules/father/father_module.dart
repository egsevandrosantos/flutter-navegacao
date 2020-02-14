import 'package:navegador/app/./modules/father/father_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/father/father_page.dart';

class FatherModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FatherController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => FatherPage()),
      ];

  static Inject get to => Inject<FatherModule>.of();
}
