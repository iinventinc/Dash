import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: 450,
            width: 400,
            child: GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _center, zoom: 11.0),
              onMapCreated: _onMapCreated,
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.10),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24.0),
                  ),
                ),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: GoogleFonts.roboto(fontSize: 18.0),
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            prefixIcon: Icon(
                              Icons.location_searching_outlined,
                              color: Colors.green,
                            ),
                            hintText: 'Where are you ?',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: GoogleFonts.roboto(fontSize: 18.0),
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Where is your destination ?',
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 50,
                        width: 380,
                        child: ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Text(
                            'Order Ride',
                            style: GoogleFonts.roboto(fontSize: 16.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              height: 260,
              width: 400,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue.withOpacity(0.10),
        iconSize: 23,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.lightBlue.withOpacity(0.10),
            icon: Icon(
              Icons.hail_sharp,
              color: Colors.black,
            ),
            label: 'Ride',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.lightBlue.withOpacity(0.10),
            icon: Icon(
              Icons.local_shipping,
              color: Colors.black,
            ),
            label: 'Delivery',
          ),
        ],
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
