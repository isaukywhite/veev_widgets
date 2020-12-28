import 'dart:io';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///antes de usar esse widget lembrar de modificar:
///
///..windows/runner/win32_windows.cpp
///case WM_CLOSE:
///  return 0;
///
///..windows/runner/main.cpp
/// #include <bitsdojo_window/bitsdojo_window_plugin.h>
/// auto bdw = bitsdojo_window_configure(BDW_CUSTOM_FRAME|BDW_HIDE_ON_STARTUP);
///
/// main.dart
/// doWhenWindowReady(() {
///    var initialSize = Size(600, 450);
///    appWindow.minSize = initialSize;
///    appWindow.size = initialSize;
///    appWindow.alignment = Alignment.center;
///    appWindow.maximizeOrRestore();
///    appWindow.show();
///  });
///

class CustomScaffold extends StatelessWidget {
  final Widget widget;
  final Function function;
  final FocusNode focoTela = FocusNode();

  CustomScaffold(this.widget, {this.function});
  _onPressed(context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Fechar app'),
        content: Text('Deseja fechar o sistema?'),
        actions: [
          FlatButton(
            child: Text('Sim'),
            onPressed: () async {
              function();
              exit(0);
            },
          ),
          FlatButton(
            child: Text('Não'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    focoTela.requestFocus();
    return RawKeyboardListener(
      focusNode: focoTela,
      onKey: (RawKeyEvent event) {
        if (event.isKeyPressed(LogicalKeyboardKey.f4) && event.isAltPressed) {
          _onPressed(context);
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            WindowTitleBarBox(
              child: MoveWindow(
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/768px-Python-logo-notext.svg.png',
                      ),
                    ),
                    Text('Aplicativo Teste'),
                    Expanded(child: Container()),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MinimizeWindowButton(),
                        MaximizeWindowButton(),
                        CloseWindowButton(
                          onPressed: () => _onPressed(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: widget),
          ],
        ),
      ),
    );
  }
}
