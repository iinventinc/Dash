import 'package:dash/Screens/MyBnb.dart';
import 'package:dash/Screens/drawer.dart';
import 'package:dash/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'exportscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final Geolocator _geolocator = Geolocator();
  late GoogleMapController mapController;
  Position? _currentPosition;
  late String _currentAddress;

  final startAddressController = TextEditingController();
  final destinationAddressController = TextEditingController();

  String _startAddress = '';
  String _destinationAdrress = '';
  late String _PlaceDistance;

  Set<Marker> markers = {};

  _getCurrentLocation() async {
    await _geolocator;
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;

        mapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0),
        ));
      });
      _getAddressFromlatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromlatLng() async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          _currentPosition!.latitude, _currentPosition!.longitude);
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            "${place.locality} ,${place.postalCode}, ${place.country}";

        startAddressController.text = _currentAddress;
        _startAddress = _currentAddress;
      });
    } catch (e) {
      print(e);
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final LatLng _center = const LatLng(9.095470, 7.409420);
GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
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
    return Scaffold(
      key: _drawerKey,
      drawer: MyDrawer(),
      body: Container(
        width: double.infinity,
        height: 800,
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
              myLocationEnabled: true,
            ),
            Positioned(
              top: 40,
              right: 15,
              left: 15,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
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
                        showCursor: true,
                        readOnly: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Where does thou go? Hogwarts?'),
                        cursorColor: Colors.black,
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom),
                                  child: Column(
                                    children: <Widget>[
                                      Form(
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(
                                              height: 30,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'No.2 nairobi street wuse',
                                                  prefixIcon: Icon(
                                                    Icons.location_on,
                                                    color: Colors.orange,
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  prefixIcon: Icon(
                                                    Icons.explore_outlined,
                                                    color: Colors.green,
                                                  ),
                                                  hintText:
                                                      'search your destination',
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        leading: Icon(
                                          Icons.home,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                          'Add Home or Work Place',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18.0),
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.lock_clock),
                                        title: Text(
                                          'Recent',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18.0),
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.location_on),
                                        title: Text(
                                          'Gwarimpa 3rd Avenue',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18.0),
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(),
                                      Divider(
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
                child: ClipOval(
                  child: Material(
                    color: Colors.blue[400],
                    child: InkWell(
                      splashColor: Colors.blue,
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(Icons.my_location),
                      ),
                      onTap: () {
                        _getCurrentLocation();
                        if (_currentPosition != null) Text(_currentAddress);
                        Text(
                            "LAT:${_currentPosition?.latitude}, LNG: ${_currentPosition?.longitude} ");
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
