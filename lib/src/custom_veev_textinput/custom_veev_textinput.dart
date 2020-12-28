import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:veev_widgets/veev_widgets.dart';

class CustomVeeVTextInput extends StatefulWidget {
  final String label;
  final TextEditingController textController;
  final Function onChanged;
  final bool obscure;
  final bool enabled;
  final int maxLength;
  final TextInputType keyboardType;
  final CustomVeeVTextInputController controller;

  const CustomVeeVTextInput({
    Key key,
    this.label,
    this.textController,
    this.onChanged,
    this.obscure,
    this.enabled,
    this.maxLength,
    this.keyboardType,
    this.controller,
  }) : super(key: key);
  @override
  _CustomVeeVTextInputState createState() => _CustomVeeVTextInputState(
        label,
        textController,
        onChanged,
        obscure,
        enabled,
        maxLength,
        keyboardType,
        controller,
      );
}

class _CustomVeeVTextInputState extends State<CustomVeeVTextInput> {
  final String label;
  final TextEditingController textController;
  final Function onChanged;
  final bool obscure;
  final bool enabled;
  final int maxLength;
  final TextInputType keyboardType;
  CustomVeeVTextInputController controller;

  _CustomVeeVTextInputState(
    this.label,
    this.textController,
    this.onChanged,
    this.obscure,
    this.enabled,
    this.maxLength,
    this.keyboardType,
    this.controller,
  );
  @override
  void initState() {
    super.initState();
    controller = controller ?? CustomVeeVTextInputController();
    controller.setEnabled(enabled);
    controller.setObscure(obscure);
    controller.setOnChanged(onChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Container(
          width: 600,
          child: TextField(
            keyboardType: keyboardType,
            inputFormatters: maxLength == null
                ? []
                : [
                    LengthLimitingTextInputFormatter(maxLength),
                  ],
            enabled: enabled,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              labelText: label,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            controller: controller.textController,
            onChanged: controller.onChanged,
            obscureText: controller.obscure ?? false,
          ),
        );
      },
    );
  }
}
