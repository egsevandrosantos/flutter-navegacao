import 'package:mobx/mobx.dart';

part 'screen2_controller.g.dart';

class Screen2Controller = _Screen2Base with _$Screen2Controller;

abstract class _Screen2Base with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
