import 'package:flutter/material.dart';


/// simply impport the UI.dart file where you want to use it
/// and you'll gain access to eveerything in this file



// to use for Conainers, textBoxes etc etc 
double height(BuildContext context, double n) {
  return MediaQuery.of(context).size.height / n;
}

double width(BuildContext context, double n) {
  return MediaQuery.of(context).size.width / n;
}

// Dash Brand Colors
Color primaryBlue = Color(0xFF1565C0);
Color secondaryBlue = Color(0xFF2196F3);

// SystemUI Colors
Color grey = Color(0xFFEBEDEF);
Color black = Color(0xFF0E0D0D);
Color white = Color(0xFFFFF5F5);

/// You can Access the FontStyles by using the . operator
/// for example AppTheme.headline1


// FontStyles
class AppTheme {
  // Largest - Similar to H1 in HTML
  static TextStyle headline1(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 10,
        fontWeight: fontWeight);
  }

  // Similar to H2 in HTML
  static TextStyle headline2(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 20,
        fontWeight: fontWeight);
  }

  // Similar to H3 in HTML
  static TextStyle headline3(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 30,
        fontWeight: fontWeight);
  }

  // Similar to H4 in HTML
  static TextStyle headline4(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 40,
        fontWeight: fontWeight);
  }

  // Similar to H5 in HTML
  static TextStyle headline5(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 50,
        fontWeight: fontWeight);
  }

  // Similar to H6 in HTML
  static TextStyle headline6(
      BuildContext context, Color color, FontWeight? fontWeight) {
    return TextStyle(
        color: color,
        fontSize: MediaQuery.of(context).size.width / 60,
        fontWeight: fontWeight);
  }
}
