import 'package:dash/constants/navigation.dart';
import 'package:dash/constants/ui.dart';
import 'package:dash/widgets/button.dart';
import 'package:dash/widgets/custom_app_bar.dart';
import 'package:dash/widgets/custom_drawer.dart';

import 'package:flutter/material.dart';


class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobile Mumber',
                  style: AppTheme.headline4(context, black),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Mobile Number',
                      // hintStyle: AppTheme.headline5(context, grey),
                      filled: true,
                      fillColor: grey,
                    ),
                  ),
                ),

                const SizedBox(height: 24,),

                Text(
                  'Password',
                  style: AppTheme.headline4(context, black),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: grey,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 56),

            MainButton(onPressed: () => {}, label: 'Send OTP', color: primary),

            const SizedBox(height: 24),

            BorderButton(
                label: 'Sign up with Google',
                icon: const Icon(Icons.g_mobiledata),
                onPressed: () {}),

            // const SizedBox(height: 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: Cross,
              children: [
                const Text('new here?'),
                TextButton(
                    onPressed: () => pushNamed(context, '/SignUp'),
                    child: const Text('SignUp'))
              ],
            ),

            // RichText(text: const TextSpan(,
            //   style: AppTheme.headline6(context, grey),
            //   children: [
            //     TextSpan(text: 'Already have an account ?'),
            //     TextSpan(text: 'Login', recognizer:  )
            //   ]
            // ))
          ],
        ),
      ),
    );
  }
}
