import 'package:dash/Routes/routes.dart';
import 'package:dash/util/constants.dart';
import 'package:flutter/material.dart';

//RECODE FOR NEW UI

class MyDrawer extends StatelessWidget {
  MyDrawer({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        
        children: [
          drawerHeader(context, "David",),
          buildMenuItem(context,
              text: "Wallet",
              icon: Icons.payment_outlined,
              tappage: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.payments)),
          buildMenuItem(context,
              text: "Discounts",
              icon: Icons.price_change,
              tappage: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.discount)),
          buildMenuItem(context,
              text: "History",
              icon: Icons.history_outlined,
              tappage: () => Navigator.of(context)
                  .pushNamed(RouteGenerator.ridehistory)),
          buildMenuItem(context,
              text: "Customize Ride",
              icon: Icons.work_rounded,
              tappage: () => Navigator.of(context)
                  .pushNamed(RouteGenerator.ridehistory)),
          buildMenuItem(context,
              text: "Customer Care",
              icon: Icons.call_end_outlined,
              tappage: () => Navigator.of(context)
                  .pushNamed(RouteGenerator.customersupport)),
          buildMenuItem(context,
              text: "Invite Friends",
              icon: Icons.person_add_alt_1_outlined,
              tappage: () =>
                  Navigator.of(context).pushNamed(RouteGenerator.about)),
          

                  SizedBox(height: 90), 
          GestureDetector(
            onTap: ()=>Navigator.of(context).pushNamed(RouteGenerator.dashdriver),
            
            child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            
          padding: EdgeInsets.all(10), 
           margin: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            
            color: Colors.lightBlue, 
            borderRadius: BorderRadius.circular(20), 
            boxShadow: [
              BoxShadow(blurRadius: 1, ), 
            
            ]
          ),
          
          child: Text("Become a Dasher", style: Whitestyle.copyWith(fontSize: 24,  )),),
            ),),
SizedBox(height: 30,), 
     
Divider(), 
          GestureDetector(
onTap: ()=> Navigator.of(context).pushNamed(RouteGenerator.legal),
            child: Container(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            TextButton(child: Text("Legal", style: mystyle.copyWith(fontWeight: FontWeight.normal)), onPressed: ()=> Navigator.of(context).pushNamed(RouteGenerator.legal)), 
          
            Text("Version 1.0")
          ]
            )),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context,
      {required String text,
      required IconData icon,
      required GestureTapCallback tappage}) {
    final color = Colors.black;
    return Material(
        color: Colors.transparent,
        child: ListTile(
          leading: Icon(icon, color: color, size: 32, ),
          title: Text(text,
              style: TextStyle(
                color: color,
                fontSize: 26,
                fontWeight: FontWeight.normal, 
              )),
          onTap: tappage,
        ));
  }

  Widget drawerHeader(BuildContext context, String _username) {
    return DrawerHeader(
      child: ListTile(
  

        onTap: () => Navigator.of(context).pushNamed(RouteGenerator.profile),
        contentPadding: EdgeInsets.only(right:60, top: 10, ),
        leading: FlutterLogo(), 
        title: Text(_username, style: mystyle.copyWith(fontSize: 24)),
        subtitle: Text("View Profile", style: mystyle.copyWith(fontSize: 14)),
      ),
    );
  }
}
