import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class InputMonetVietNamDemo extends StatefulWidget {
  @override
  _InputMonetVietNamDemoState createState() => _InputMonetVietNamDemoState();
}

class _InputMonetVietNamDemoState extends State<InputMonetVietNamDemo> {
  final _controllerMoney = new MaskedTextController(mask: '000,000,000');
  final _controllerPhone = new MaskedTextController(mask: '(+84) 000 000 000');
  @override
  Widget build(BuildContext context) {
    return KeyboardMediaQuery(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Custom Keyboard Demo"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _controllerMoney,
                  keyboardType: NumberKeyboard.inputType,
                  decoration: InputDecoration(
                    hintText: "Input money",
                    labelText: "Money",
                    labelStyle: TextStyle(color: Colors.green),
                    hintStyle: TextStyle(color: Colors.black),
                    icon: Icon(
                      Icons.attach_money,
                      color: Colors.blue,
                    ),
                  ),
                  onChanged: (string) {
                    setState(() {
                      if (_controllerMoney.text.length > 9) {
                        print('The minimum amount is: 999,999,999');
                      }
                      // Remove number end
                      var abc = _controllerMoney.text;
                      print('Money _controller is: $abc');
                      print('Money is: $string');
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _controllerPhone,
                  keyboardType: NumberKeyboard.inputType,
                  decoration: InputDecoration(
                    hintText: "(+84) 987 123 456",
                    labelText: "Phone",
                    labelStyle: TextStyle(color: Colors.green),
                    hintStyle: TextStyle(color: Colors.black),
                    icon: Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                  ),
                  onChanged: (string) {
                    setState(() {
                      // Remove number end
                      var abc = _controllerPhone.text;
                      print('Phone _controller is: $abc');
                      print('Phone: $string');
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
