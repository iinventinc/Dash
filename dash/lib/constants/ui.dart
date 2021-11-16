import 'package:flutter/material.dart';

double text(double n, context ) => MediaQuery.of(context).size.width / n;

double width(double n, context) => MediaQuery.of(context).size.width / n;

double height(double n, context) => MediaQuery.of(context).size.width / n;

const Color primary = Color(0xFF1565C0);
const Color secondary = Color(0xFFE3F2FD);
const Color darkGrey = Color(0xFF807B7B);
const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Color(0xFFEBEDEF);

class AppTheme extends TextStyle{

  static headline1(context, Color color, [FontWeight? fontWeight] ) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: text(8, context)
      );
  }

  static headline2(context, Color color, [FontWeight? fontWeight] ) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: text(12, context)
      );
  }

  static headline3(context, Color color, [FontWeight? fontWeight] ) {
    return TextStyle(
      fontWeight: fontWeight,
      color: color,
      fontSize: text(16, context)
      );
  }

  static headline4(context, Color color, [FontWeight? fontWeight]) {
    return TextStyle(
        fontWeight: fontWeight, color: color, fontSize: text(24, context));
  }

  static headline5(context, Color color, [FontWeight? fontWeight]) {
    return TextStyle(
        fontWeight: fontWeight, color: color, fontSize: text(32, context));
  }

  static headline6(context, Color color, [FontWeight? fontWeight]) {
    return TextStyle(
        fontWeight: fontWeight, color: color, fontSize: text(40, context));
  }

  static headline7(context, Color color, [FontWeight? fontWeight]) {
    return TextStyle(
        fontWeight: fontWeight, color: color, fontSize: text(42, context));
  }
}
