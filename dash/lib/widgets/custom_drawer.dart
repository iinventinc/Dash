// ignore_for_file: file_names

import 'package:dash/constants/navigation.dart';
import 'package:dash/constants/ui.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 32,
              child: Text('D', style: AppTheme.headline2(context, white))),

              const SizedBox(height: 12,),

              Text('Username', style: AppTheme.headline4(context, black, FontWeight.bold)),

              const SizedBox(
                height: 8,
              ),

              Text('Phone Number', style: AppTheme.headline4(context, grey),),

              const SizedBox(
                height: 24,
              ),

              Expanded(
                flex: 1,
                child: SizedBox(
                  child: ListView(
                    children: const [
                      DrawerItems(label: 'Payment and Discount', icon: Icons.monetization_on_outlined, route: '/'),
                      DrawerItems(label: 'Rent a Veicle', icon: Icons.car_rental, route: '/'),
                      DrawerItems(label: 'History', icon: Icons.history_rounded, route: '/'),
                      DrawerItems(label: 'Customer Support', icon: Icons.support_agent_outlined, route: '/')
                    ],
                  ),
                ),
              ),

              Text('Become a Driver', style: AppTheme.headline4(context, primary),),

              const SizedBox(height: 8,),

              Text('Terms and Conditons', style: AppTheme.headline5(context, darkGrey),),

              const SizedBox(
            height: 8,
          ),

              Text('Partner with Us', style: AppTheme.headline5(context, darkGrey),),

              const SizedBox(
            height: 32,
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const Icon(Icons.exit_to_app_outlined),
                Text('Log out', style: AppTheme.headline5(context, black))
              ],)

          ]),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  final String label;
  final IconData icon;
  final String route;

  const DrawerItems({
    required this.label,
    required this.icon,
    required this.route,

    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      onTap: () => pushNamed(context, route),
      leading: Icon(icon, color: black,),
      title: Text(label, style: AppTheme.headline4(context, black),),
    );
  }
}

