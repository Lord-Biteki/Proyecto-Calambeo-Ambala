import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RutaAnconTesoritoScreen extends StatefulWidget {
  const RutaAnconTesoritoScreen({super.key});

  @override
  _RutaAnconTesoritoScreenState createState() =>
      _RutaAnconTesoritoScreenState();
}

class _RutaAnconTesoritoScreenState extends State<RutaAnconTesoritoScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kAnconTesorito = CameraPosition(
    target: LatLng(
        4.4609084934306225, -75.23161302591403), // Coordenadas actualizadas
    zoom: 15.0, // Nivel de zoom ajustado
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ruta a Mirador Ancón Tesorito'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kAnconTesorito,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          const Marker(
            markerId: MarkerId('ancon_tesorito'),
            position: LatLng(4.4609084934306225,
                -75.23161302591403), // Coordenadas actualizadas
            infoWindow: InfoWindow(
              title: 'Mirador Ancón Tesorito',
              snippet: 'Ibagué, Colombia',
            ),
          ),
        },
      ),
    );
  }
}
