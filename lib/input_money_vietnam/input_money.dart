import 'package:cool_ui/cool_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:provider/provider.dart';
import 'package:utils_for_app/theme_app/theme_type.dart';

class InputMonetVietNamDemo extends StatefulWidget {
  @override
  _InputMonetVietNamDemoState createState() => _InputMonetVietNamDemoState();
}

class _InputMonetVietNamDemoState extends State<InputMonetVietNamDemo> {
  final _controllerMoney = new MaskedTextController(mask: '000,000,000');
  final _controllerPhone = new MaskedTextController(mask: '(+84) 000 000 000');

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // Clean up the controller when the widget is disposed.
    _controllerMoney.dispose();
    _controllerPhone.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardMediaQuery(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _controllerMoney,
                keyboardType: NumberKeyboard.inputType,
                decoration: InputDecoration(
                  hintText: tr("hintText"),
                  labelText: tr("money"),
                  labelStyle: Theme.of(context).textTheme.body2,
                  hintStyle: Theme.of(context).textTheme.body2,
                  icon: Icon(
                    Icons.attach_money,
                    color: Theme.of(context).primaryColor,
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
                  labelText: tr("phone"),
                  labelStyle: Theme.of(context).textTheme.body2,
                  hintStyle: Theme.of(context).textTheme.body2,
                  icon: Icon(
                    Icons.phone,
                    color: Theme.of(context).primaryColor,
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      // Change Locale of App
                      EasyLocalization.of(context).locale = Locale("vi", "VN");
                    },
                    child: Text(
                      'vietnam',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ).tr(context: context),
                    color: Theme.of(context).primaryColor,
                    elevation: 4.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      // Change Locale of App
                      EasyLocalization.of(context).locale = Locale("en", "US");
                    },
                    child: Text(
                      'usa',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ).tr(context: context),
                    color: Theme.of(context).primaryColor,
                    elevation: 4.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'isTheme',
                style: Theme.of(context).textTheme.body1,
              ).tr(
                args: [Provider.of<ThemeState>(context).themeName],
              ),
            )
          ],
        ),
      ),
    );
  }
}
