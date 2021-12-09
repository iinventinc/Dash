import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Rides extends StatefulWidget {
  const Rides({Key? key}) : super(key: key);

  @override
  _RidesState createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: _center,
          ),
          onMapCreated: _onMapCreated,
        ),
      ),
    );
  }
}
