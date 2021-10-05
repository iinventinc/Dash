import '../Screens/exportscreen.dart';

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
      case discount:
        return MaterialPageRoute(builder: (_) => Discount());

      case login:
        return MaterialPageRoute(builder: (_) => Login());
      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());

      //
      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());

      case ridehistory:
        return MaterialPageRoute(builder: (_) => RideHistory());

      case customizeride:
        return MaterialPageRoute(builder: (_) => CustomizeRide());
      case discount:
        return MaterialPageRoute(builder: (_) => Discount());

      case orderride:
        return MaterialPageRoute(builder: (_) => OrderRide());
      case payments:
        return MaterialPageRoute(builder: (_) => Payments());
      case edithome:
        return MaterialPageRoute(builder: (_) => EditHome());

      case customersupport:
        return MaterialPageRoute(builder: (_) => CustomerSupport());

      case about:
        return MaterialPageRoute(builder: (_) => InviteFriends());
      case profile:
        return MaterialPageRoute(builder: (_) => Profile());
      case legal:
        return MaterialPageRoute(builder: (_) => Legal());

      case dashdriver:
        return MaterialPageRoute(builder: (_) => DashDriver());
      default:
        throw FormatException("Route does not exist");
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
