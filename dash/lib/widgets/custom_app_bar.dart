import 'package:dash/constants/ui.dart';
import 'package:dash/widgets/button.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String? pageName;
  final List<Widget>? action;

  CustomAppBar({ 
    this.pageName,
    this.action,
    Key? key }) : super(key: key);

  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back, color: black,),
      title: Text(pageName!),
      actions: action,
    );
  }
}