import 'package:mobx/mobx.dart';

part 'screen3_controller.g.dart';

class Screen3Controller = _Screen3Base with _$Screen3Controller;

abstract class _Screen3Base with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
