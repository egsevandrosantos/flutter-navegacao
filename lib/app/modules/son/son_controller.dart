import 'package:mobx/mobx.dart';

part 'son_controller.g.dart';

class SonController = _SonBase with _$SonController;

abstract class _SonBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
