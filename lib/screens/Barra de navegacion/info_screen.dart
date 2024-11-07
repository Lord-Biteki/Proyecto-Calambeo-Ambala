// archivo: lib/screens/info_screen.dart

import 'package:flutter/material.dart';

import '../../widgets/custom_bottom_navigation.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información'),
      ),
      body: const Center(
        child: Text('Esta es la pantalla de información'),
      ),
      bottomNavigationBar:
          const CustomBottomNavigation(), // Añadir la barra de navegación
    );
  }
}
