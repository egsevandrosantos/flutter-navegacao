import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/grand_father/grand_father_controller.dart';
import 'package:navegador/app/./modules/grand_father/grand_father_module.dart';

void main() {
  initModule(GrandFatherModule());
  GrandFatherController grandfather;

  setUp(() {
    grandfather = GrandFatherModule.to.get<GrandFatherController>();
  });

  group('GrandFatherController Test', () {
    test("First Test", () {
      expect(grandfather, isInstanceOf<GrandFatherController>());
    });

    test("Set Value", () {
      expect(grandfather.value, equals(0));
      grandfather.increment();
      expect(grandfather.value, equals(1));
    });
  });
}
