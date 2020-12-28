import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
part 'custom_veev_textinput_controller.g.dart';

class CustomVeeVTextInputController = _CustomVeeVTextInputControllerBase
    with _$CustomVeeVTextInputController;

abstract class _CustomVeeVTextInputControllerBase with Store {
  @observable
  bool obscure = false;
  @observable
  bool enabled = true;
  @observable
  TextEditingController textController = TextEditingController(text: '');
  @observable
  Function onChanged;

  @action
  setEnabled(bool value) => enabled = value;
  @action
  setOnChanged(Function value) => onChanged = value;
  @action
  setText(String value) => textController.text = value;
  @action
  setObscure(bool value) => obscure = value;
}
