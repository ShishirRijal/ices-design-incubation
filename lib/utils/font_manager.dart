import 'package:flutter/material.dart';

class FontFamily {
  static const String poppins = "Poppins";
  static const String cookie = "Cookie";
  static const String sacramento = "Sacramento";
  static const String spoodbrush = "Spoodbrush";
}

// The generalized text style

TextStyle getTextStyle({
  required double fontSize,
  required Color color,
  required FontWeight fontWeight,
  required String fontFamily,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// * Light Text Style
TextStyle getLightTextStyle({
  double fontSize = 16,
  Color color = Colors.grey,
  FontWeight fontWeight = FontWeight.w300,
  String fontFamily = FontFamily.poppins,
}) {
  return getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: FontWeight.w300,
    fontFamily: fontFamily,
  );
}

// * Regular Text Style
TextStyle getRegularTextStyle({
  double fontSize = 18.0,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.w400,
  String fontFamily = FontFamily.poppins,
}) {
  return getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

// * Medium Text Style
TextStyle getMediumTextStyle({
  double fontSize = 20.0,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.w500,
  String fontFamily = FontFamily.poppins,
}) {
  return getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

// * SemiBold Text Style
TextStyle getSemiBoldTextStyle({
  double fontSize = 22.0,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.w600,
  String fontFamily = FontFamily.poppins,
}) {
  return getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

// * Bold Text Style
TextStyle getBoldTextStyle({
  double fontSize = 24.0,
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.w700,
  String fontFamily = FontFamily.poppins,
}) {
  return getTextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}
