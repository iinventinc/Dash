import 'package:dash/constants/ui.dart';
import 'package:dash/views/auth/log_in.dart';
import 'package:dash/views/auth/set_password.dart';
import 'package:dash/views/auth/sign_up.dart';
import 'package:dash/views/onboarding/on.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/home/main_app.dart';

// import 'views/onboarding/onboarding1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: black)
        ),
        
        iconTheme: const IconThemeData(color: black),
        primarySwatch: Colors.blue,
      ),
      home: const On(),
      routes: {
        '/SignUp': (context) => const SignUp(),
        '/LogIn': (context) => const LogIn(),
        '/SetPassword': (context) => const SetPassword(),
        '/Home': (context) => const   Home()
      },
    );
  }
}
