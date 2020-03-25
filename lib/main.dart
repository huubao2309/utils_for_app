import 'package:cool_ui/cool_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:utils_for_app/theme_app/theme_data.dart';
import 'package:utils_for_app/theme_app/theme_type.dart';

import 'input_money_vietnam/input_money.dart';

void main() {
  // Register for keyboard
  NumberKeyboard.register();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('vi', 'VN'),
        Locale('en', 'US'),
      ],
      path: 'resources/langs',
      child: ChangeNotifierProvider<ThemeState>(
        create: (context) => ThemeState(),
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = new ThemeApp();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        EasyLocalization.of(context).delegate,
      ],
      supportedLocales: EasyLocalization.of(context).supportedLocales,
      locale: EasyLocalization.of(context).locale,
      theme: Provider.of<ThemeState>(context).theme == ThemeType.DARK
          ? theme.getDarkTheme()
          : theme.getLightTheme(),
      home: KeyboardRootWidget(
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'changeTheme',
          style: Theme.of(context).textTheme.body1,
        ).tr(context: context),
        actions: <Widget>[
          Switch(
            value: Provider.of<ThemeState>(context).theme == ThemeType.DARK,
            onChanged: (value) {
              Provider.of<ThemeState>(context).theme =
                  value ? ThemeType.DARK : ThemeType.LIGHT;
              setState(() {
                print('value: $value');
              });
            },
          ),
        ],
      ),
      body: InputMonetVietNamDemo(),
    );
  }
}
