import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/great_grand_father/great_grand_father_controller.dart';
import 'package:navegador/app/./modules/great_grand_father/great_grand_father_module.dart';

void main() {
  initModule(GreatGrandFatherModule());
  GreatGrandFatherController greatgrandfather;

  setUp(() {
    greatgrandfather =
        GreatGrandFatherModule.to.get<GreatGrandFatherController>();
  });

  group('GreatGrandFatherController Test', () {
    test("First Test", () {
      expect(greatgrandfather, isInstanceOf<GreatGrandFatherController>());
    });

    test("Set Value", () {
      expect(greatgrandfather.value, equals(0));
      greatgrandfather.increment();
      expect(greatgrandfather.value, equals(1));
    });
  });
}
