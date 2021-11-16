import 'package:dash/constants/navigation.dart';
import 'package:dash/constants/ui.dart';
import 'package:dash/widgets/button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                Text('Enter your mobile number',
                  style: AppTheme.headline3(context, black),
                ),

                const SizedBox(height: 8),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+234 567',
                      // hintStyle: AppTheme.headline5(context, grey),
                      filled: true,
                      fillColor: grey,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 56),

            MainButton(onPressed: () => pushNamed(context, '/SetPassword'), label: 'Send OTP', color: primary),

            const SizedBox(height: 24),

            BorderButton(label: 'Sign up with Google', icon: const Icon(Icons.g_mobiledata), onPressed: () {}),

            // const SizedBox(height: 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: Cross,
              children: [
                const Text('Already have an account ?'),
                TextButton(onPressed: () => pushNamed(context, '/LogIn'), child: const Text('Login'))
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