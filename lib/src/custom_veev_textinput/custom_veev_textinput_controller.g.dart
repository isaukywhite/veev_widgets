// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_veev_textinput_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomVeeVTextInputController
    on _CustomVeeVTextInputControllerBase, Store {
  final _$obscureAtom =
      Atom(name: '_CustomVeeVTextInputControllerBase.obscure');

  @override
  bool get obscure {
    _$obscureAtom.reportRead();
    return super.obscure;
  }

  @override
  set obscure(bool value) {
    _$obscureAtom.reportWrite(value, super.obscure, () {
      super.obscure = value;
    });
  }

  final _$enabledAtom =
      Atom(name: '_CustomVeeVTextInputControllerBase.enabled');

  @override
  bool get enabled {
    _$enabledAtom.reportRead();
    return super.enabled;
  }

  @override
  set enabled(bool value) {
    _$enabledAtom.reportWrite(value, super.enabled, () {
      super.enabled = value;
    });
  }

  final _$textControllerAtom =
      Atom(name: '_CustomVeeVTextInputControllerBase.textController');

  @override
  TextEditingController get textController {
    _$textControllerAtom.reportRead();
    return super.textController;
  }

  @override
  set textController(TextEditingController value) {
    _$textControllerAtom.reportWrite(value, super.textController, () {
      super.textController = value;
    });
  }

  final _$onChangedAtom =
      Atom(name: '_CustomVeeVTextInputControllerBase.onChanged');

  @override
  void Function(String) get onChanged {
    _$onChangedAtom.reportRead();
    return super.onChanged;
  }

  @override
  set onChanged(void Function(String) value) {
    _$onChangedAtom.reportWrite(value, super.onChanged, () {
      super.onChanged = value;
    });
  }

  final _$_CustomVeeVTextInputControllerBaseActionController =
      ActionController(name: '_CustomVeeVTextInputControllerBase');

  @override
  dynamic setEnabled(bool value) {
    final _$actionInfo = _$_CustomVeeVTextInputControllerBaseActionController
        .startAction(name: '_CustomVeeVTextInputControllerBase.setEnabled');
    try {
      return super.setEnabled(value);
    } finally {
      _$_CustomVeeVTextInputControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setOnChanged(dynamic Function(String) value) {
    final _$actionInfo = _$_CustomVeeVTextInputControllerBaseActionController
        .startAction(name: '_CustomVeeVTextInputControllerBase.setOnChanged');
    try {
      return super.setOnChanged(value);
    } finally {
      _$_CustomVeeVTextInputControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setText(String value) {
    final _$actionInfo = _$_CustomVeeVTextInputControllerBaseActionController
        .startAction(name: '_CustomVeeVTextInputControllerBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_CustomVeeVTextInputControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic setObscure(bool value) {
    final _$actionInfo = _$_CustomVeeVTextInputControllerBaseActionController
        .startAction(name: '_CustomVeeVTextInputControllerBase.setObscure');
    try {
      return super.setObscure(value);
    } finally {
      _$_CustomVeeVTextInputControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
obscure: ${obscure},
enabled: ${enabled},
textController: ${textController},
onChanged: ${onChanged}
    ''';
  }
}
