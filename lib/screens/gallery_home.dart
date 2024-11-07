import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Ancon%20Tesorito/mirador_ancon_tesorito.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Jardin%20Botanico%20San%20Jorge/jardin_botanico_san_jorge.dart';
import 'package:interfaz_principal_real/widgets/custom_bottom_navigation.dart';
import 'Sitios Turisticos/Parque Meraki/parque_meraki.dart';

// Widget reutilizable para la barra de búsqueda
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String hintText;

  const SearchAppBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          const Text('Buscar', style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor:
          Colors.green[700], // Cambia el color según tu preferencia
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              filled: true,
              fillColor: Colors.white.withOpacity(0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(80); // Altura total del AppBar
}

class GalleryHome extends StatelessWidget {
  final List<String> touristSpots = [
    'Mirador Ancón Tesorito',
    'Jardín Botánico San Jorge',
    'Parque Temático Meraki'
  ];

  final Map<String, String> imagesBySpot = {
    'Mirador Ancón Tesorito': 'assets/images/image (1).jpeg',
    'Jardín Botánico San Jorge': 'assets/images/image (1).jpg',
    'Parque Temático Meraki': 'assets/images/image (2).jpeg',
  };

  GalleryHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SearchAppBar(
          hintText:
              'Busca un sitio turístico'), // Aquí se añade la barra de búsqueda
      body: ListView.builder(
        itemCount: touristSpots.length,
        itemBuilder: (context, index) {
          String spot = touristSpots[index];
          String imagePath = imagesBySpot[spot]!;

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  spot,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (spot == 'Mirador Ancón Tesorito') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const MiradorAnconTesoritoScreen(),
                        ),
                      );
                    } else if (spot == 'Jardín Botánico San Jorge') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const JardinBotanicoSanJorgeScreen(),
                        ),
                      );
                    } else if (spot == 'Parque Temático Meraki') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ParqueTematicoMeraki(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 25),
                  ),
                  child: const Text(
                    'Te gustaría conocer más? Dale click',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar:
          const CustomBottomNavigation(), // Agrega tu CustomBottomNavigation aquí
    );
  }
}
