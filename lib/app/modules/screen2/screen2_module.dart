import 'package:navegador/app/./modules/screen2/screen2_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/screen2/screen2_page.dart';

class Screen2Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Screen2Controller()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => Screen2Page()),
      ];

  static Inject get to => Inject<Screen2Module>.of();
}
