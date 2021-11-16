import 'package:flutter/material.dart';

class Rides extends StatefulWidget {
  const Rides({ Key? key }) : super(key: key);

  @override
  _RidesState createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Icon(Icons.ac_unit),
    );
  }
}