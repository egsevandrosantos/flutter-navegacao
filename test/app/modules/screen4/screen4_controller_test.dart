import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:navegador/app/./modules/screen4/screen4_controller.dart';
import 'package:navegador/app/./modules/screen4/screen4_module.dart';

void main() {
  initModule(Screen4Module());
  Screen4Controller screen4;

  setUp(() {
    screen4 = Screen4Module.to.get<Screen4Controller>();
  });

  group('Screen4Controller Test', () {
    test("First Test", () {
      expect(screen4, isInstanceOf<Screen4Controller>());
    });

    test("Set Value", () {
      expect(screen4.value, equals(0));
      screen4.increment();
      expect(screen4.value, equals(1));
    });
  });
}
