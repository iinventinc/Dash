import 'package:flutter/material.dart';

double text(double n, context ) {
  return MediaQuery.of(context).size.width / n;
}

double width(double n, context) {
  return MediaQuery.of(context).size.width / n;
}

double height(double n, context) {
  return MediaQuery.of(context).size.width / n;
}

Color primary = Color(0xFF1565C0);
Color secondary = Color(0xFFE3F2FD);
Color white = Colors.white;
Color black = Colors.black;
Color grey = Color(0xFFEBEDEF);

class AppTheme {

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
