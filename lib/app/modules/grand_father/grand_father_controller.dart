import 'package:mobx/mobx.dart';

part 'grand_father_controller.g.dart';

class GrandFatherController = _GrandFatherBase with _$GrandFatherController;

abstract class _GrandFatherBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
