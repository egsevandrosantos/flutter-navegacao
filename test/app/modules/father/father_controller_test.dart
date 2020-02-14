import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/father/father_controller.dart';
import 'package:navegador/app/./modules/father/father_module.dart';

void main() {
  initModule(FatherModule());
  FatherController father;

  setUp(() {
    father = FatherModule.to.get<FatherController>();
  });

  group('FatherController Test', () {
    test("First Test", () {
      expect(father, isInstanceOf<FatherController>());
    });

    test("Set Value", () {
      expect(father.value, equals(0));
      father.increment();
      expect(father.value, equals(1));
    });
  });
}
