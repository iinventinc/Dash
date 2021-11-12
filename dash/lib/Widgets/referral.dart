import 'package:dash/Screens/otp.dart';
import "package:flutter/material.dart";

class Referral extends StatefulWidget {
  @override
  _ReferralState createState() => _ReferralState();
}

class _ReferralState extends State<Referral> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
            child: Column(children: [
          Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  onPressed: () {})),
          Container(height: 300, width: 300, decoration: BoxDecoration()),
          Container(
              alignment: Alignment.center,
              child: MyTextStyle(
                  yourtext: "Enter referral Code and invite friends",
                  mycolor: Colors.black,
                  fontweight: FontWeight.bold)),
          SizedBox(height: 50),
          Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Enter referral Code",
              )),
          SizedBox(height: 10),
          Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey.shade300,
              )),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    child: IconButton(
                        icon: Icon(
                          Icons.share,
                        ),
                        onPressed: () {}),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Theme.of(context).primaryColorLight,
                    )),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Copy"),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.copy,
                            ),
                            onPressed: () {})
                      ],
                    ),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Theme.of(context).primaryColorLight,
                    )),
              ),
            ],
          )
        ])),
      )),
    );
  }
}
