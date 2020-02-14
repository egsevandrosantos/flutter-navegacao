import 'package:mobx/mobx.dart';

part 'screen4_controller.g.dart';

class Screen4Controller = _Screen4Base with _$Screen4Controller;

abstract class _Screen4Base with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
