// ignore: file_names
// ignore_for_file: must_be_immutable

import 'package:dash/constants/ui.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final GestureTapCallback onPressed;
  final String label;
  final Color color;
  // final BorderSide? border;


  // ignore: use_key_in_widget_constructors
  const MainButton({
     required this.onPressed,
     required this.label,
     required this.color,
    //  this.border
     });

  @override
 Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
      style: ButtonStyle(
        // side: MaterialStateProperty.all(border),
        textStyle: MaterialStateProperty.all(AppTheme.headline4(context, white)),
        foregroundColor: MaterialStateProperty.all(white),
        backgroundColor: MaterialStateProperty.all(color),
        minimumSize: MaterialStateProperty.all(Size(width(1, context), 32)),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        // ignore: prefer_const_constructors
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16))
      )
    );
  }
}

class BorderButton extends StatelessWidget {

  final String label;
  final Widget icon;
  final GestureTapCallback onPressed;

  const BorderButton({ 
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(label), icon
      ],),
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.center,
        side: MaterialStateProperty.all(const BorderSide(color: black, width: 1)),
        foregroundColor: MaterialStateProperty.all(black),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          minimumSize: MaterialStateProperty.all(Size(width(1, context), 32)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
          padding:
              MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12))
        ),
    );
  }
}

class MiniButton extends StatelessWidget {
  final String label;
  final Icon icon;
  final GestureTapCallback onPressed;

  const MiniButton({ 
    required this.label,
    required this.icon,
    required this.onPressed,
    Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon, Text(label)
        ]
      ),
      style: ButtonStyle(
        alignment: Alignment.center,
        // side: MaterialStateProperty.all(const BorderSide(color: black, width: 1)),
        foregroundColor: MaterialStateProperty.all(black),
          backgroundColor: MaterialStateProperty.all(secondary),
          // minimumSize: MaterialStateProperty.all(Size(width(1, context), 32)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
          padding:
              MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12))
      ),
    );
  }
}