import 'package:dash/constants/UI.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Dash', style: AppTheme.headline2(context, black,),),
          Image.asset('il1.png')
        ],)
    );
  }
}