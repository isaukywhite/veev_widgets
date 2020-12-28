import 'package:mobx/mobx.dart';
part 'custom_veev_button_controller.g.dart';

class CustomVeeVButtonController = _CustomVeeVButtonControllerBase
    with _$CustomVeeVButtonController;

abstract class _CustomVeeVButtonControllerBase with Store {
  @observable
  String label = '';

  @observable
  Function function;

  @action
  setLabel(String value) => label = value;

  @action
  setFunction(Function value) => function = value;
}
