import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../utils/colors/colors.dart';


TextTheme _getTextTheme(ThemeData theme) {
  final textTheme = theme.textTheme
      .copyWith(
    bodyText1: const TextStyle(fontSize: 14, color: ColorsApp.blackText, height: 22 / 14),
    bodyText2: const TextStyle(fontSize: 12, color: ColorsApp.blackText, height: 19 / 12),
    caption: const TextStyle(fontSize: 12, color: ColorsApp.gray, height: 19 / 12),
    button: const TextStyle(fontSize: 18, color: ColorsApp.white, fontFamily: primaryFontFamilyBold, height: 29 / 18),
    subtitle1: const TextStyle(fontSize: 16, color: ColorsApp.blackText, fontFamily: primaryFontFamilyBold, height: 26 / 16),
    subtitle2: const TextStyle(fontSize: 14, color: ColorsApp.blackText, fontFamily: primaryFontFamilyBold, height: 22 / 14),
    headline6: const TextStyle(fontSize: 22, color: ColorsApp.blackText, fontFamily: primaryFontFamilyBold, height: 35 / 22),
  )
      .apply(
    // bodyColor: const Color(0xFF687084),
    // displayColor:  const Color(0xFF687084),
  );
  return textTheme;
}

ThemeData appThemeData(BuildContext context) => ThemeData(
  primaryColor: Colors.blueAccent,
  fontFamily: primaryFontFamily,
  textTheme: _getTextTheme(Theme.of(context)),
  scaffoldBackgroundColor: ColorsApp.scaffoldColor,
  colorScheme: const ColorScheme(
    primary: Color(0xFF9099B2),
    secondary: Color(0xffF47B7B),
    background: Color(0xffF9F9F9),
    error: Color(0xffd32f2f),
    onSecondary: Color(0xffffffff),
    onBackground: Color(0xffffffff),
    brightness: Brightness.light,
    surface: Color(0xffffffff),
    onSurface: Colors.black,
    onPrimary: Colors.white,
    onError: Colors.white,
  ),
);
