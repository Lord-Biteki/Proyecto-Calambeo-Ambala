import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaRutaCabanasScreen extends StatelessWidget {
  const MapaRutaCabanasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng miradorCabanasLocation =
        LatLng(4.469652612327588, -75.20077929664672);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa - Mirador Las Cabañas'),
        backgroundColor: Colors.lightGreen,
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: miradorCabanasLocation,
          zoom: 15,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('mirador_cabanas'),
            position: miradorCabanasLocation,
            infoWindow: InfoWindow(
              title: 'Mirador Las Cabañas',
              snippet: 'Disfruta de esta hermosa vista',
            ),
          ),
        },
        mapType: MapType.normal,
      ),
    );
  }
}
