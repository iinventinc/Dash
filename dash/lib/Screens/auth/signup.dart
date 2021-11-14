import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//FOR WHEN THE PLATFORM IS AN IOS DEVICE
    if (Platform.isIOS) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              CupertinoIcons.back,
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
                child: Text(
                  "Enter your mobile number",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
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
                    "Send Otp",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Sign up with Google",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                onPressed: () {},
              )
            ],
          )),
        ),
      );
    }
//FOR ANDROID DEVICES
    else if (Platform.isAndroid) {
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
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Container(
              child: Column(
            children: [
              SizedBox(
                height: 30,
              ),

              SizedBox(height: 10),
//ALLOW PERMISSION TO READ CONTACTS
              SizedBox(
                height: 55,
                child: TextFormField(
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                    hintText: 'Enter your mobile number',
                    fillColor: Colors.grey[100],
                    filled: true,
                    labelStyle: GoogleFonts.roboto(fontSize: 24.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 100),

              TextButton(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Send Otp",
                    style:
                        GoogleFonts.roboto(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Sign up with Google",
                    style:
                        GoogleFonts.roboto(fontSize: 18.0, color: Colors.black),
                  ),
                ),
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an account?",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                  TextButton(
                    onPressed: () {},
                    child: Text("Login",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ],
          )),
        ),
      );
    }

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
                child: Text("Enter your mobile number",
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
                  borderRadius: BorderRadius.circular(30)),
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
                  "Send Otp",
                  style: GoogleFonts.courgette(fontSize: 18),
                ),
              ),
              onPressed: () {},
            ),
            TextButton(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Sign up with Google",
                  style: GoogleFonts.courgette(fontSize: 18.0),
                ),
              ),
              onPressed: () {},
            )
          ],
        )),
      ),
    );
  }
}
