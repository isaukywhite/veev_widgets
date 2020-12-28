// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_veev_button_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CustomVeeVButtonController on _CustomVeeVButtonControllerBase, Store {
  final _$labelAtom = Atom(name: '_CustomVeeVButtonControllerBase.label');

  @override
  String get label {
    _$labelAtom.reportRead();
    return super.label;
  }

  @override
  set label(String value) {
    _$labelAtom.reportWrite(value, super.label, () {
      super.label = value;
    });
  }

  final _$functionAtom = Atom(name: '_CustomVeeVButtonControllerBase.function');

  @override
  Function get function {
    _$functionAtom.reportRead();
    return super.function;
  }

  @override
  set function(Function value) {
    _$functionAtom.reportWrite(value, super.function, () {
      super.function = value;
    });
  }

  final _$_CustomVeeVButtonControllerBaseActionController =
      ActionController(name: '_CustomVeeVButtonControllerBase');

  @override
  dynamic setLabel(String value) {
    final _$actionInfo = _$_CustomVeeVButtonControllerBaseActionController
        .startAction(name: '_CustomVeeVButtonControllerBase.setLabel');
    try {
      return super.setLabel(value);
    } finally {
      _$_CustomVeeVButtonControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFunction(Function value) {
    final _$actionInfo = _$_CustomVeeVButtonControllerBaseActionController
        .startAction(name: '_CustomVeeVButtonControllerBase.setFunction');
    try {
      return super.setFunction(value);
    } finally {
      _$_CustomVeeVButtonControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
label: ${label},
function: ${function}
    ''';
  }
}
