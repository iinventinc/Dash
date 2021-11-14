import 'package:dash/Screens/auth/login.dart';
import 'package:dash/Screens/auth/onboarding.dart';
import 'package:dash/Screens/auth/signup.dart';
import 'package:dash/Widgets/customizeride.dart';

import '../Widgets/exportscreen.dart';

import 'package:flutter/material.dart';

class RouteGenerator {
  static const String onboarding = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/sign up';
  static const String otp = '/otp';
  static const String payments = '/payment';
  static const String discount = '/discount';

  static const String orderride = '/orderride';
  static const String ridehistory = '/ridehistory';
  static const String customizeride = '/customizeride';
  static const String customersupport = '/customersupport';
  static const String about = '/about';
  static const String dashdriver = '/dashdriver';
  static const String profile = '/profile';
  static const String legal = '/legal';
  static const String edithome = '/edithome';
  static const String promotions = '/promotions';
  

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => Onboarding());

      case home:
        return MaterialPageRoute(builder: (_) => Home());

      case signup:
        return MaterialPageRoute(builder: (_) => SignUp());
      case login:
        return MaterialPageRoute(builder: (_) => Login());
      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());

      //
      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());

      case customizeride:
        return MaterialPageRoute(builder: (_) => CustomizeRide());
      

      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());
      case payments:
        return MaterialPageRoute(builder: (_) => Payments());
      case edithome:
        return MaterialPageRoute(builder: (_) => EditHome());

      
      case profile:
        return MaterialPageRoute(builder: (_) => Profile());
      default:
        throw FormatException("Route does not exist");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
