import 'package:navegador/app/./modules/screen4/screen4_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/screen4/screen4_page.dart';

class Screen4Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Screen4Controller()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => Screen4Page()),
      ];

  static Inject get to => Inject<Screen4Module>.of();
}
