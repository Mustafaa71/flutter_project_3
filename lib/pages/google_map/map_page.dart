import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  static const double _latitude = 24.694969;
  static const double _longitude = 46.724129;
  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(_latitude, _longitude), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jahez'),
        actions: const [Icon(Icons.search, size: 40.0)],
        elevation: 0.0,
        backgroundColor: Constants.kAppbarColor,
      ),
      body: Stack(
        children: [
          const GoogleMap(initialCameraPosition: initialCameraPosition),
          Positioned(
            left: 20.0,
            bottom: 50.0,
            child: InkWell(
              onTap: () {
                ElegantNotification.error(
                  title: const Text('Wrong access'),
                  description: const Text('You enter a wrong information try again'),
                  animationDuration: const Duration(seconds: 1),
                ).show(context);
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.all(40.0),
                decoration: const BoxDecoration(
                  color: Constants.kAppbarColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: const Text(
                  'Select Your location',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
