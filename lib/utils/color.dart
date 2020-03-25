import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  // Light Mode
  static MaterialColor primaryLightThemeColor =
      MaterialColor(0xffffde03, color); // yellow
  static MaterialColor accentLightThemeColor =
      MaterialColor(0xffff6960, color); // pink

  // Dark Mode
  static MaterialColor primaryDarkThemeColor =
      MaterialColor(0xff0336ff, color); // blue
  static MaterialColor accentDarkThemeColor =
      MaterialColor(0xfff0f8ff, color); // brown
}
