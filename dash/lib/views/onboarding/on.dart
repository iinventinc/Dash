import 'package:dash/Widgets/Button.dart';
import 'package:dash/constants/navigation.dart';
import 'package:dash/constants/ui.dart';
import 'package:dash/views/auth/sign_up.dart';
import 'package:flutter/material.dart';

class On extends StatefulWidget {
  const On({Key? key}) : super(key: key);

  @override
  _OnState createState() => _OnState();
}



class _OnState extends State<On> with TickerProviderStateMixin {

  // @override
  // void setState(() {
  //   if (index )
  // });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dash',
                  style: AppTheme.headline2(
                    context,
                    black,
                  ),
                ),

                // ignore: prefer_const_constructors
                SizedBox(
                  height: height(1, context) - 32,
                  child: const TabBarView(
                    children: [
                      Onboarding1(),
                      Onboarding2(),
                      Onboarding3(),
                    ],
                  ),
                ),

                // TabPageSelectorIndicator(
                //     backgroundColor: grey,
                //     borderColor: Colors.transparent,
                //     size: 8),

                MainButton(
                  label: 'Get Started',
                  onPressed: () => popAndPushNamed(context, '/SignUp'),
                  color: primary,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Onboarding1 extends StatelessWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/il1.png'),
            Text('Get a ride right at your doorstep',
              textAlign: TextAlign.center,
                style: AppTheme.headline3(context, black))
          ],
        );
  }
}

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/il2.png'),
            Text('Send items to loved ones and business',
              textAlign: TextAlign.center,
              style: AppTheme.headline3(context, black)),
          ],
        );
  }
}

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/il3.png'),
            Text('Get all that and more securely and on time',
              textAlign: TextAlign.center,
                style: AppTheme.headline3(context, black)),
          ],
        );
  }
}
