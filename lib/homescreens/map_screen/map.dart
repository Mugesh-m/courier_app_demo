import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      home: MapHome(),
    );
  }
}

class MapHome extends StatefulWidget {
  const MapHome({Key? key}) : super(key: key);

  @override
  State<MapHome> createState() => _MapHomeState();
}

class _MapHomeState extends State<MapHome> {
  String? _currentAddress;

  var size, height, width;

  String googleApikey = "AIzaSyBOgcyXO41hNF3SR1WeK_iBQQaKWgH1uYs";
  GoogleMapController? mapController;
  CameraPosition? cameraPosition;
  LatLng currentLocation = const LatLng(8.17453597485686, 77.43176985368315);
  LatLng markerLocation = const LatLng(0, 0);
  String location = "Search Location";

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        actions: [
          Container(
            child: InkWell(
              onTap: () {},
              child: Container(
                  height: 300,
                  padding: const EdgeInsets.only(left: 30, right: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        location,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.9,
                decoration: BoxDecoration(
                  color: Colors.black12,
                ),
                child: GoogleMap(
                  onMapCreated: (GoogleMapController controller) {
                    mapController = controller;
                  },
                  initialCameraPosition:
                      CameraPosition(target: currentLocation, zoom: 14),
                  markers: {
                    Marker(
                        markerId: const MarkerId('id'),
                        position: currentLocation)
                  },
                  onTap: (LatLng latLng) {
                    currentLocation = latLng;
                  },
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
