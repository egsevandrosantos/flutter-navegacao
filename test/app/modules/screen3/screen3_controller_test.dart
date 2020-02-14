import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/screen3/screen3_controller.dart';
import 'package:navegador/app/./modules/screen3/screen3_module.dart';

void main() {
  initModule(Screen3Module());
  Screen3Controller screen3;

  setUp(() {
    screen3 = Screen3Module.to.get<Screen3Controller>();
  });

  group('Screen3Controller Test', () {
    test("First Test", () {
      expect(screen3, isInstanceOf<Screen3Controller>());
    });

    test("Set Value", () {
      expect(screen3.value, equals(0));
      screen3.increment();
      expect(screen3.value, equals(1));
    });
  });
}
