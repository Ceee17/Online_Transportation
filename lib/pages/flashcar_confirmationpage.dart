import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_uts_online_transportation/pages/flashcar_destination.dart';
import 'package:project_uts_online_transportation/pages/flashcar_pickup.dart';
import 'package:project_uts_online_transportation/pages/searchingdriver.dart';

class CarConfirmation extends StatefulWidget {
  final String pickup;
  final String destination;
  final String id;

  CarConfirmation({
    required this.pickup,
    required this.destination,
    required this.id,
  });

  @override
  State<CarConfirmation> createState() => CarConfirmationState();
}

class CarConfirmationState extends State<CarConfirmation> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  TextEditingController _searchController = TextEditingController();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.168757691815309, 106.78946886372276),
    zoom: 14.4746,
  );

  static final Marker Untar = Marker(
    markerId: MarkerId('Universitas Tarumanagara'),
    infoWindow: InfoWindow(title: 'Universitas Tarumanagara'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(-6.168757691815309, 106.78946886372276),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            // markers: {
            //   Untar,
            // },
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            top: 40,
            left: 30,
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PickupCarPage(
                      pickup: widget.pickup, // Replace with actual data
                      destination:
                          widget.destination, // Replace with actual data
                    ),
                  ),
                );
              },
              child: Text(
                widget.pickup,
                style: TextStyle(color: Color(0xff828282)),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DestinationcarPage(
                      destination:
                          widget.destination, // Replace with actual data
                      pickup: widget.pickup, // Replace with actual data
                    ),
                  ),
                );
              },
              child: Text(
                widget.destination,
                style: TextStyle(color: Color(0xff828282)),
              ),
            ),
          ),
          Positioned(
            top: 800,
            left: 30,
            width: 350,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ), // Change button color here
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchingDrivPage(
                            id: '3',
                          )), // Navigate to CarPickupPage
                );
              },
              child: Text(
                'Confirm',
                style: TextStyle(
                    color: Color(0xff828282)), // Change text color here
              ),
            ),
          ),
        ],
      ),
    );
  }
}
