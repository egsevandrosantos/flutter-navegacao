import 'package:navegador/app/./modules/screen3/screen3_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navegador/app/./modules/screen3/screen3_page.dart';

class Screen3Module extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Screen3Controller()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => Screen3Page()),
      ];

  static Inject get to => Inject<Screen3Module>.of();
}
