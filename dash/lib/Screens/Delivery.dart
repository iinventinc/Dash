
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Delivery extends StatefulWidget {
  const Delivery({ Key? key }) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}
 late GoogleMapController mapController;
  final Set<Marker> _markers = {};
  final Set<Polyline> _polylines = {};

  final LatLng _center = const LatLng(9.095470, 7.409420);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          markers: _markers,
          polylines: _polylines,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          myLocationButtonEnabled: true,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 10,
          ),
        ),
      
    );
  }
}