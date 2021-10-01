import 'package:flutter/material.dart';

class OrderRide extends StatefulWidget {
  const OrderRide({ Key? key }) : super(key: key);

  @override
  _OrderRideState createState() => _OrderRideState();
}

class _OrderRideState extends State<OrderRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(children: [
Text("Your Order has been received ")
          
        ],),
      )
      
    );
  }
}