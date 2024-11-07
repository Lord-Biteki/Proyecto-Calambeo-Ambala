// archivo: lib/widgets/custom_bottom_navigation.dart

import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/ui/Ui_principal.dart';
import '../screens/Barra de navegacion/person_screen.dart';
import '../screens/Barra de navegacion/info_screen.dart';
import '../screens/Barra de navegacion/settings_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      width: MediaQuery.of(context)
          .size
          .width, // Ajusta el ancho del contenedor al ancho de la pantalla
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UiPrincipal()),
              );
            },
            icon: const Icon(Icons.home, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PersonScreen()),
              );
            },
            icon: const Icon(Icons.person, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InfoScreen()),
              );
            },
            icon: const Icon(Icons.info, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
            icon: const Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
