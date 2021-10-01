import 'package:dash/Routes/routes.dart';
import 'package:dash/Screens/exportscreen.dart';
import 'package:dash/util/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  late TextEditingController _firstnamecontroller;
  late TextEditingController _lastnamecontroller;
  late TextEditingController _emailcontroller;
  late TextEditingController _numbercontroller;

  late String _firstname = "David";
  late String _lastname;
  late String _email;
  late String _number;

  late String address = '';
  void initState() {
    super.initState();
    _firstnamecontroller = TextEditingController();
    _lastnamecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    _numbercontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Profile",
            style: mystyle.copyWith(fontSize: 24),
          ),
          toolbarOpacity: 1,
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: IconButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.home),
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
          actions: [
            //LogOut from device
            TextButton(
                child: Text(
                  "Log Out",
                  style: mystyle.copyWith(fontWeight: FontWeight.normal),
                ),
                onPressed: () => Navigator.pop(context))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/il2.png"),
                    radius: 20,
                  ),
                ),
                Text(_firstname, style: mystyle),
              ],
            ),

            Divider(),

            //CONNECT TO GOOGLE
            ListTile(
              title: Text("Connect to Google"),

              //add an
              leading: Icon(Icons.wifi),
            ),

            //NAME AND MAIL

            Divider(),

            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.name,
              onTap: () {
                setState(() {
                  ;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: InputBorder.none,
                  label: Text("First Name"),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),
            Divider(),
            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.name,
              onTap: () {
                setState(() {
                  ;
                });
              },
              decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: InputBorder.none,
                  label: Text("Last Name"),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),

            Divider(),

            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.text,
              onTap: () {
                setState(() {});
              },
              decoration: InputDecoration(
                  hintText: "Enter Email",
                  border: InputBorder.none,
                  label: Text("Email"),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),
            TextButton(
                child: Text("Unverified", style: mystyle), onPressed: () {}),
            Divider(),
            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.number,
              onTap: () {
                setState(() {});
              },
              decoration: InputDecoration(
                  hintText: "Enter Number",
                  border: InputBorder.none,
                  label: Text("Phone Number"),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  labelStyle: TextStyle(
                    fontSize: 16,
                  )),
            ),
            TextButton(
                child: Text("Unverified", style: mystyle), onPressed: () {}),

            Divider(),
            //add country flag and code

            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.edit),
              title: Text("Home"),
              subtitle: Text("address"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, RouteGenerator.edithome);
                  });
                },
              ),
              title: Text("Work"),
              subtitle: Text("address"),
            ),
          ]),
        ));
  }

  addAddress() {
    return TextField(
      autocorrect: true,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: "Enter address",
          border: InputBorder.none,
          label: Text("Phone Number"),
          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
          labelStyle: TextStyle(
            fontSize: 16,
          )),
    );
  }
}
