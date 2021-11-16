import 'package:dash/Widgets/button.dart';
import 'package:dash/constants/navigation.dart';
import 'package:dash/constants/ui.dart';
import 'package:dash/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({ Key? key }) : super(key: key);

  @override
  _SetPasswordState createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Enter a safe and secure password', 
              textAlign: TextAlign.left,
            style: AppTheme.headline3(context, black),),

            const SizedBox(height: 8),

            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // hintText: '+234 567',
                  // hintStyle: AppTheme.headline5(context, grey),
                  filled: true,
                  fillColor: grey,
                ),
              ),
            ),

            const SizedBox(height: 56,),

            MainButton(onPressed: () => popAndPushNamed(context, '/Home'), label: 'Proceed to login', color: primary)
          ],
        ),
      ),
    );
  }
}