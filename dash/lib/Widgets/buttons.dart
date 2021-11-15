// ignore: file_names
// ignore_for_file: must_be_immutable

import 'package:dash/constants/ui.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {

  final GestureTapCallback onPressed;
  final String label;

  MainButton({
     required this.onPressed,
     required this.label
     });

  var mat = MaterialStateProperty;
  @override
 Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(label),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(white),
        backgroundColor: MaterialStateProperty.all(primary),
        minimumSize: MaterialStateProperty.all(Size(width(1, context) - 32, 32)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 16))
      )
    );
  }
}