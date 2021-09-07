import 'package:dash/Screens/home.dart';
import 'package:dash/Screens/login.dart';
import 'package:dash/Screens/onboarding.dart';
import 'package:dash/Screens/signup.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String onboarding = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String signup = '/sign up';
  static const String otp = '/otp';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const Onboarding());

      case home:
        return MaterialPageRoute(builder: (_) => const Home());

      case signup:
        return MaterialPageRoute(builder: (_) => const SignUp());

      case login:
        return MaterialPageRoute(builder: (_) => const Login());

      default:
        throw FormatException("Route does not exist");
    }
  }
}
