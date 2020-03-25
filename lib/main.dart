import 'package:cool_ui/cool_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'input_money_vietnam/input_money.dart';

void main() {
  NumberKeyboard.register();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('vi', 'VN'),
        Locale('en', 'US'),
      ],
      path: 'resources/langs',
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        EasyLocalization.of(context).delegate,
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KeyboardRootWidget(
        child: InputMonetVietNamDemo(),
      ),
    );
  }
}
