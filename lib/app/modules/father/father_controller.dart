import 'package:mobx/mobx.dart';

part 'father_controller.g.dart';

class FatherController = _FatherBase with _$FatherController;

abstract class _FatherBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
