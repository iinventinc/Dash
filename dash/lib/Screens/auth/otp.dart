import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //FOR ALL DEVICES AS DEFAULT
    var _usernumber;

    var timertoresendotp;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.topLeft,
                child:
                    Text("Please enter the 4-digit code sent to $_usernumber",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                        ))),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
            Container(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                    child: Text("Resend code in ${timertoresendotp}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )),
                    onPressed: () {})),
            SizedBox(height: 100),
            TextButton(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Confirm Otp",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        )),
      ),
    );
  }
}

Widget MyTextStyle(
    {required String yourtext,
    required Color mycolor,
    required FontWeight fontweight}) {
  return Text(yourtext,
      style: TextStyle(color: mycolor, fontSize: 24, fontWeight: fontweight));
}
