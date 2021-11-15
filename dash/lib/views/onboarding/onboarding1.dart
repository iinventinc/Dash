import 'package:dash/constants/UI.dart';
import 'package:flutter/material.dart';
import 'package:dash/widgets/buttons.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Dash', style: AppTheme.headline2(context, black,),),
          Image.asset('assets/il1.png'),
          MainButton(
            label: '', 
            onPressed: () {  },
            )
        ],)
    );
  }
}