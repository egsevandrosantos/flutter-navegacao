import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/son/son_controller.dart';
import 'package:navegador/app/./modules/son/son_module.dart';

void main() {
  initModule(SonModule());
  SonController son;

  setUp(() {
    son = SonModule.to.get<SonController>();
  });

  group('SonController Test', () {
    test("First Test", () {
      expect(son, isInstanceOf<SonController>());
    });

    test("Set Value", () {
      expect(son.value, equals(0));
      son.increment();
      expect(son.value, equals(1));
    });
  });
}
