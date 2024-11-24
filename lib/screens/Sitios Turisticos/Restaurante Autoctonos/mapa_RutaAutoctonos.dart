import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaRutaAutoctonos extends StatefulWidget {
  const MapaRutaAutoctonos({super.key});

  @override
  State<MapaRutaAutoctonos> createState() => _MapaRutaAutoctonosState();
}

class _MapaRutaAutoctonosState extends State<MapaRutaAutoctonos> {
  late GoogleMapController mapController;

  // Coordenadas del Mirador Autóctonos
  final LatLng _miradorLocation =
      const LatLng(4.4608655540630835, -75.23224163652048);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta al Mirador Autóctonos'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: _miradorLocation,
          zoom: 15, // Nivel de zoom inicial
        ),
        markers: {
          Marker(
            markerId: const MarkerId('mirador_autoctonos'),
            position: _miradorLocation,
            infoWindow: const InfoWindow(
              title: 'Mirador Autóctonos',
              snippet: 'Ibagué, Tolima',
            ),
          ),
        },
      ),
    );
  }
}
