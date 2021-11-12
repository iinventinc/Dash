import 'package:dash/Widgets/exportscreen.dart';
import 'package:flutter/material.dart';



class Payments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.white,
    
appBar: MyAppBar(mytitle: "Wallet",), 
                      body: Column(
                        children: [
                          Stack(children: [
                   
                            SizedBox(height: 20) ,
Positioned(
  child:   Container(
  
      padding: EdgeInsets.all(20),
  
      height: 180,
  
      width: 330,
  
      decoration: BoxDecoration(
  
        color: Colors.blue,
  
        borderRadius: BorderRadius.circular(15),
  
      )),
),
          

          Positioned(
            //RED CARD
              top: 50,
              child: Container(
                  padding: EdgeInsets.all(20),
                  height: 180,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.red.shade700,
                    borderRadius: BorderRadius.circular(15),
                  ))),
          Positioned(
            //YELLOW CIRCLE
              top: 65,
              right: 50,
              child: Container(
                  padding: EdgeInsets.all(20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(40),
                  ))),

          Positioned(
            //RED CIRCLE
              top: 65,
              right: 70,
              child: Container(
                  padding: EdgeInsets.all(20),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40),
                  ))),
          Positioned(
            top: 280,
            right: 10,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "Add another Card",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
                          ],),
                        ],
                      )
    );
  }
}
