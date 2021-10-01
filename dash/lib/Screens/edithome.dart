import 'package:dash/util/constants.dart';
import 'package:flutter/material.dart';

class EditHome extends StatefulWidget {
  const EditHome({Key? key}) : super(key: key);

  @override
  State<EditHome> createState() => _EditHomeState();
}

class _EditHomeState extends State<EditHome> {
  @override
  late TextEditingController homelocation;
  void initState() {
    super.initState();
    homelocation = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Enter home location", style: mystyle.copyWith(fontWeight: FontWeight.normal)),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
        ),
        body: Column(
          children: [
            Card(
              elevation: 1,
              child: ListTile(
                  leading: Icon(Icons.location_history),
                  trailing: IconButton(
                    icon: Icon(Icons.exit_to_app, color: Colors.lightBlue, ),
                    onPressed: () {},
                  ),
                  title: TextField(
                    
                     
                      controller: homelocation,
                      decoration: InputDecoration(
                        border:InputBorder.none ,
                        hintText: "Enter home address",
                        helperStyle: TextStyle(
                          color: Colors.grey, 
                        ),
                      ))),
            ),
//NO INTERNET, A PICTURE SHOULD BE ADDED HERE

//SEARCH ADDRESS FOR MAPS SHOULD BE INPUTED.
            Container(
              child: Container(),
            )
          ],
        ));
  }
}
