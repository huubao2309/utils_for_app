import 'package:flutter/material.dart';
import 'package:utils_for_app/utils/color.dart';
import 'package:utils_for_app/utils/size.dart';

class ThemeApp {
  getDarkTheme() {
    return ThemeData(
      primaryColor: AppColor.primaryDarkThemeColor,
      accentColor: AppColor.accentDarkThemeColor,
      brightness: Brightness.dark,
      textTheme: TextTheme(
        body1: TextStyle(
          color: AppColor.accentDarkThemeColor,
          fontSize: SizeApp.sizeText,
          fontWeight: FontWeight.bold,
        ),
        body2: TextStyle(
          color: AppColor.accentDarkThemeColor,
          fontSize: SizeApp.contentText,
          fontWeight: FontWeight.normal,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryDarkThemeColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  getLightTheme() {
    return ThemeData(
      primaryColor: AppColor.primaryLightThemeColor,
      accentColor: AppColor.accentLightThemeColor,
      brightness: Brightness.light,
      textTheme: TextTheme(
        body1: TextStyle(
          color: AppColor.accentLightThemeColor,
          fontSize: SizeApp.sizeText,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryLightThemeColor,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
