import 'package:dash/Screens/Delivery.dart';
import 'package:dash/Screens/exportscreen.dart';
import 'package:dash/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Screens/exportscreen.dart';
import '../util/constants.dart';

//CODE IT FOR THE NEW UI
class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _TabPages = <Widget>[
      Delivery(),
      Home(),
    ];

    final BottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Container(
            height: 50,
            width: 50,
            decoration: _currentTabIndex == 0
                ? BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.circular(10),
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
            child: Icon(
              Icons.bus_alert,
              color: Colors.black,
            )),
        label: "Delivery",
      ),
      BottomNavigationBarItem(
          icon: Container(
              height: 50,
              width: 50,
              decoration: _currentTabIndex == 1
                  ? BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(10),
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
              child: Icon(
                Icons.hail_outlined,
                color: Colors.black,
              )),
          label: "Ride",
          tooltip: "Order Ride"),
    ];

    assert(_TabPages.length == BottomNavBarItems.length);

    return BottomNavigationBar(
        items: BottomNavBarItems,
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        });
  }
}

class MyBnb2 extends StatefulWidget {
  const MyBnb2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyBnb2State();
}

class _MyBnb2State extends State<MyBnb2> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Home(),
      const Delivery(),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Tab1'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Tab2'),
      const BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Tab3'),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      
    );
  }
}
