import 'package:cool_ui/cool_ui.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:utils_for_app/screen/demo_multi_language.dart';

import 'demo_keyboard.dart';
import 'keyboard/custom_keyboard.dart';
import 'keyboard/test_keyboard.dart';

// TODO
// void main() => runApp(
//       EasyLocalization(
//         supportedLocales: [
//           Locale('vi', 'VN'),
//           Locale('en', 'US'),
//         ],
//         path: 'resources/langs',
//         child: MyApp(),
//       ),
//     );

void main() {
  NumberKeyboard.register();
  TestKeyboard.register();
  runApp(KeyboardRootWidget(child: MyApp())); //添加了KeyboardRootWidget
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   // localizationsDelegates: [
    //   //   GlobalMaterialLocalizations.delegate,
    //   //   GlobalWidgetsLocalizations.delegate,
    //   //   EasyLocalization.of(context).delegate,
    //   // ],
    //   // supportedLocales: EasyLocalization.of(context).supportedLocales,
    //   // locale: EasyLocalization.of(context).locale,
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   home: KeyBoardDemo(),
    // );

    return WeuiToastConfig(
        data: WeuiToastConfigData(successText: '测试ConfigData'),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
                // counter didn't reset back to zero; the application is not restarted.
                primarySwatch: Colors.blue),
            home: CustomKeyboardDemo()));
  }
}
