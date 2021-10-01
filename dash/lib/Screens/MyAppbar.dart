import 'package:dash/Routes/routes.dart';
import 'package:dash/util/constants.dart';
import "package:flutter/material.dart";

//RECODE FOR NEW UI

//REUSABLE APPBAR CLASS FOR
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(60.0);

  // final String actiontitle;
final String mytitle;
  

  
  const MyAppBar({Key? key,
  //  required this.actiontitle,
required this.mytitle, 
 }
    
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true, 
      title: Text(mytitle, style: mystyle.copyWith(fontSize: 24),), 
  toolbarOpacity: 1,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: IconButton(
          onPressed: ()=> Navigator.of(context).pushNamed(RouteGenerator.home),
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.fromLTRB(0, 20, 16, 0),
      //     child: Text(actiontitle,
      //     style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold) ),
      //   )
      // ],
    );
  }
}


