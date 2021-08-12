import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'custom_veev_button_controller.dart';

class CustomVeeVButton extends StatefulWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? label;
  final Function? onPressed;
  final CustomVeeVButtonController? controller;

  const CustomVeeVButton({
    Key? key,
    this.height,
    this.width,
    this.color,
    this.label,
    this.onPressed,
    this.controller,
  }) : super(key: key);

  @override
  _CustomVeeVButtonState createState() => _CustomVeeVButtonState(
        height,
        width,
        color,
        label,
        onPressed,
        controller,
      );
}

class _CustomVeeVButtonState extends State<CustomVeeVButton> {
  final double? height;
  final double? width;
  final Color? color;
  final String? label;
  final Function? onPressed;
  final CustomVeeVButtonController? controller;

  _CustomVeeVButtonState(
    this.height,
    this.width,
    this.color,
    this.label,
    this.onPressed,
    this.controller,
  );

  @override
  void initState() {
    super.initState();
    controller?.setLabel(label ?? '');
    controller?.setFunction(onPressed ?? () {});
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return RawMaterialButton(
          fillColor:
              controller?.function != null ? color ?? Colors.blue : Colors.grey,
          splashColor: color == null ? Colors.blue.withAlpha(130) : color
            ?..withAlpha(130),
          child: Container(
            height: height ?? 55,
            width: width ?? 280,
            child: Center(
              child: Text(
                "${controller?.label}",
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          onPressed: () {
            controller?.function();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        );
      },
    );
  }
}
