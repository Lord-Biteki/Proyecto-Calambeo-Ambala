import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaRutajardinbotanico extends StatefulWidget {
  const MapaRutajardinbotanico({super.key});

  @override
  _MapaRutajardinbotanicoState createState() => _MapaRutajardinbotanicoState();
}

class _MapaRutajardinbotanicoState extends State<MapaRutajardinbotanico> {
  late GoogleMapController mapController;

  static const LatLng _ubicacion =
      LatLng(4.449774054075943, -75.22305281436462);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubicacion Jardin Botanico San Jorge'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: const CameraPosition(
          target: _ubicacion,
          zoom: 15,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('ubicacion'),
            position: _ubicacion,
            infoWindow: InfoWindow(
              title: 'Jardín Botánico San Jorge',
              snippet: 'Ubicación del Jardín Botánico.',
            ),
          ),
        },
      ),
    );
  }
}
