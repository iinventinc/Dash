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

  void _showBottomSheet() {}
  // Widget addStops() {
  //   return TextButton(
  //     child: Expanded(
  //       child: Container(
  //         padding: EdgeInsets.all(8.0),
  //         height: 50,
  //         width: 120,
  //         decoration: BoxDecoration(
  //           color: Colors.blue[200],
  //           borderRadius: BorderRadius.circular(30),
  //         ),
  //         child: Row(
  //           children: [
  //             Icon(
  //               Icons.add_location_alt_outlined,
  //               color: Colors.black,
  //             ),
  //             Text("Add stops", style: mystyle),
  //           ],
  //         ),
  //       ),
  //     ),
  //     onPressed: () {},
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomSheet: MyBottomSheet(),
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
                        })),
                Container(
                
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: _center, zoom: 11.0),
                    zoomControlsEnabled: false,
                    onMapCreated: _onMapCreated,
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

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.place),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }


}
