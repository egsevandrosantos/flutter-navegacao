import 'package:mobx/mobx.dart';

part 'great_grand_father_controller.g.dart';

class GreatGrandFatherController = _GreatGrandFatherBase
    with _$GreatGrandFatherController;

abstract class _GreatGrandFatherBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
