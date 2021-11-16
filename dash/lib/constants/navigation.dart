import 'package:flutter/material.dart';


void push(BuildContext context, Widget route) => Navigator.push(context, MaterialPageRoute(builder: (context) => route));

void pop(BuildContext context) =>
    Navigator.pop(context);


void pushNamed(BuildContext context, String route) =>
    Navigator.pushNamed(context, route);


void popAndPushNamed(BuildContext context, String route) =>
    Navigator.popAndPushNamed(context, route);

void popUntil(BuildContext context, Widget route) =>
    Navigator.popUntil(context, (route) => false);
