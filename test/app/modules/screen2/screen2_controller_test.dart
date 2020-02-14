import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/screen2/screen2_controller.dart';
import 'package:navegador/app/./modules/screen2/screen2_module.dart';

void main() {
  initModule(Screen2Module());
  Screen2Controller screen2;

  setUp(() {
    screen2 = Screen2Module.to.get<Screen2Controller>();
  });

  group('Screen2Controller Test', () {
    test("First Test", () {
      expect(screen2, isInstanceOf<Screen2Controller>());
    });

    test("Set Value", () {
      expect(screen2.value, equals(0));
      screen2.increment();
      expect(screen2.value, equals(1));
    });
  });
}
