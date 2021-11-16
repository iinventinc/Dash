import 'package:dash/constants/ui.dart';
import 'package:dash/views/home/delivery.dart';
import 'package:dash/views/home/rides.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pagesIndex = 1;

  final List<Widget> _pages = [
    Delivery(),
    Rides()
  ];

  void onSelect(int index) {
    setState(() {
      _pagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        // Selection Logic
        currentIndex: _pagesIndex,
        onTap: onSelect,

        // Icon Color when not selected
        unselectedIconTheme: const IconThemeData(color: darkGrey),
        unselectedItemColor: darkGrey,

        // Icon Color when selected
        selectedIconTheme: const IconThemeData(color: primary),
        selectedItemColor: primary,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping), label: 'Delivery'),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_people),
            label: 'Ride',
          ),
        ],
      ),
      body: _pages[_pagesIndex],
    );
  }
}
