import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomKeyboardDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomKeyboardDemoState();
  }
}

class CustomKeyboardDemoState extends State<CustomKeyboardDemo> {
  TextEditingController textEditingController =
      TextEditingController(text: 'test');
  TextEditingController textEditing2Controller =
      TextEditingController(text: 'test');

  @override
  Widget build(BuildContext context) {
    return KeyboardMediaQuery(child: Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Custom Keyboard Demo"),
        ),
        body: ListView(
          children: <Widget>[
            TextField(
              controller: textEditingController,
              keyboardType: TextInputType.text,
            ),
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Space for testing scroll \nWhen KeyBoard is show',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            TextField(
              controller: textEditing2Controller,
              decoration: InputDecoration(labelText: 'Label test 1'),
              keyboardType: NumberKeyboard.inputType,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Label test 2'),
              keyboardType: NumberKeyboard.inputType,
            )
          ],
        ),
      );
    }));
  }
}
