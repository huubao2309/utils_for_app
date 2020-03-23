import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MultiLanguagePage extends StatefulWidget {
  @override
  _MultiLanguagePageState createState() => _MultiLanguagePageState();
}

class _MultiLanguagePageState extends State<MultiLanguagePage> {
  TextEditingController _textEditingController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formatText = NumberFormat.currency(
            locale: EasyLocalization.of(context).locale.languageCode,
            symbol: '')
        .format(
      (_textEditingController.text.isEmpty
          ? 0
          : double.parse(_textEditingController.text)),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('title').tr(context: context),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _textEditingController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: tr("hintText"),
                  labelText: tr("titleText"),
                  labelStyle: TextStyle(color: Colors.green),
                  hintStyle: TextStyle(color: Colors.black),
                  icon: Icon(
                    Icons.attach_money,
                    color: Colors.blue,
                  ),
                ),
                onChanged: (string) {
                  setState(() {
                    // TODO: Bug can't change with dot decimal: 123.45 with Vietnamese
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                formatText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'content',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ).tr(context: context),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  // Change Locale of App
                  EasyLocalization.of(context).locale = Locale("en", "US");
                },
                child: Text(
                  'textButtonEnglish',
                  style: TextStyle(color: Colors.black),
                ).tr(context: context),
                color: Colors.yellow,
                elevation: 4.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  // Change Locale of App
                  EasyLocalization.of(context).locale = Locale("vi", "VN");
                },
                child: Text(
                  'textButtonVietNam',
                  style: TextStyle(color: Colors.black),
                ).tr(context: context),
                color: Colors.yellow,
                elevation: 4.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
