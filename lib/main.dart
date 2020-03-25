import 'package:cool_ui/cool_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:utils_for_app/theme_app/theme_data.dart';
import 'package:utils_for_app/theme_app/theme_type.dart';

import 'input_money_vietnam/input_money.dart';

// Comment for Test
// void main() {
//   NumberKeyboard.register();
//   runApp(
//     EasyLocalization(
//       supportedLocales: [
//         Locale('vi', 'VN'),
//         Locale('en', 'US'),
//       ],
//       path: 'resources/langs',
//       child: ChangeNotifierProvider<ThemeState>(
//         create: (context) => ThemeState(),
//         child: App(),
//       ),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         EasyLocalization.of(context).delegate,
//       ],
//       supportedLocales: EasyLocalization.of(context).supportedLocales,
//       locale: EasyLocalization.of(context).locale,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: KeyboardRootWidget(
//         child: InputMonetVietNamDemo(),
//       ),
//     );
//   }
// }

// Test Change Theme of App
void main() {
  runApp(
    ChangeNotifierProvider<ThemeState>(
      create: (context) => ThemeState(),
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = new ThemeApp();
    return MaterialApp(
      theme: Provider.of<ThemeState>(context).theme == ThemeType.DARK
          ? theme.getDarkTheme()
          : theme.getLightTheme(),
      home: MyApp(),
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
        'Change Theme',
        style: Theme.of(context).textTheme.body1,
      )),
      body: Center(
        child: Switch(
          value: Provider.of<ThemeState>(context).theme == ThemeType.DARK,
          onChanged: (value) {
            Provider.of<ThemeState>(context).theme =
                value ? ThemeType.DARK : ThemeType.LIGHT;
            setState(() {
              print('value: $value');
            });
          },
        ),
      ),
    );
  }
}
