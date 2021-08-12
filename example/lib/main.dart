import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:veev_widgets/veev_widgets.dart' as vw;

void main() {
  runApp(MaterialApp(
    home: ExemploPage(),
  ));
}

class ExemploPage extends StatefulWidget {
  @override
  _ExemploPageState createState() => _ExemploPageState();
}

class _ExemploPageState extends State<ExemploPage> {
  bool obscure = false;
  bool enabled = true;
  onChanged(String value) {
    print(value);
  }

  vw.CustomVeeVTextInputController inputController =
      vw.CustomVeeVTextInputController();

  String label = 'Teste';
  Function function;
  vw.CustomVeeVButtonController controller = vw.CustomVeeVButtonController();
  void changeFunction() {
    function = function == null
        ? () {
            print('ok');
          }
        : null;
    controller.setFunction(function);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example App'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: vw.CustomVeeVTextInput(
                    controller: inputController,
                    enabled: enabled,
                    label: 'Teste',
                    keyboardType: TextInputType.number,
                    obscure: obscure,
                    onChanged: onChanged,
                  ),
                ),
                IconButton(
                  icon: Observer(
                    builder: (_) {
                      return Icon(
                        inputController.obscure
                            ? Icons.visibility
                            : Icons.visibility_off,
                      );
                    },
                  ),
                  onPressed: () {
                    inputController.setObscure(!inputController.obscure);
                  },
                ),
              ],
            ),
          ),
          vw.CustomVeeVButton(
            label: label,
            onPressed: function,
            controller: controller,
          ),
          ElevatedButton(
            child: Text('Testar'),
            onPressed: changeFunction,
          ),
        ],
      ),
    );
  }
}
