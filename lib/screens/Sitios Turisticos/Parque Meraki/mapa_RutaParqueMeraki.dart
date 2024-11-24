import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaParqueTematicoMerakiScreen extends StatefulWidget {
  const MapaParqueTematicoMerakiScreen({super.key});

  @override
  _MapaParqueTematicoMerakiScreenState createState() =>
      _MapaParqueTematicoMerakiScreenState();
}

class _MapaParqueTematicoMerakiScreenState
    extends State<MapaParqueTematicoMerakiScreen> {
  late GoogleMapController mapController;

  static const LatLng _parqueTematicoMerakiLocation =
      LatLng(4.468109616418779, -75.19746919876694);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa del Parque Temático Meraki'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: const CameraPosition(
          target: _parqueTematicoMerakiLocation,
          zoom: 14.0,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('parqueTematicoMeraki'),
            position: _parqueTematicoMerakiLocation,
            infoWindow: InfoWindow(
              title: 'Parque Temático Meraki',
              snippet: '¡Un lugar de diversión y naturaleza!',
            ),
          ),
        },
      ),
    );
  }
}
