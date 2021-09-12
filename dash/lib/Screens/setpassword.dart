import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //FOR ALL DEVICES AS DEFAULT

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
                child: Text("Enter a safe and secure password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ))),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
            ),
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
                  "Proceed to Login",
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
