import 'package:dash/Screens/MyBnb.dart';
import 'package:dash/Screens/drawer.dart';
import 'package:dash/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'exportscreen.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};
  late AnimationController _animationController;
  late bool isPlaying = false;
//  final Animation<double> myAnimation;
  final LatLng _center = const LatLng(9.095470, 7.409420);
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  bool _formfilled = false;
  TextEditingController _myLocation = TextEditingController();
  TextEditingController _myDestination = TextEditingController();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _showDrawer() {
    _drawerKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        drawer: MyDrawer(),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(Icons.menu),
                      iconSize: 30,
                      splashColor: Colors.blue,
                      color: Colors.black,
                      onPressed: () {
                        _showDrawer();
                      }),
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(
                    children: <Widget>[
                      GoogleMap(
                        initialCameraPosition:
                            CameraPosition(target: _center, zoom: 11.0),
                        zoomControlsEnabled: false,
                        onMapCreated: _onMapCreated,
                      ),
                      Positioned(
                        top: 10,
                        right: 15,
                        left: 15,
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  _showDrawer();
                                },
                                icon: Icon(Icons.menu),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          'Where does thou go? Hogwarts?'),
                                  cursorColor: Colors.black,
                                  onTap: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
