import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Ancon%20Tesorito/mirador_ancon_tesorito.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Jardin%20Botanico%20San%20Jorge/jardin_botanico_san_jorge.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Mirador%20las%20caba%C3%B1as/mirador_caba%C3%B1as.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Parque%20Meraki/parque_meraki.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Restaurante%20Autoctonos/mirador_autoctonos.dart';
import 'place_card.dart';

class PaginaRutas extends StatelessWidget {
  const PaginaRutas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Escoge tu próximo sitio turístico!',
          style: TextStyle(fontSize: 21),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeader(title: 'Rutas Calambeo'),
            PlaceCard(
              imageUrl: 'assets/images/autoctonos1.jpeg',
              title: 'Mirador Autóctonos',
              description: 'Hermoso mirador con vistas espectaculares...',
              location: 'Ciudad: Ibagué',
              price: 'Platos a la carta (entrada gratis)',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MiradorAutoctonosScreen(
                      title: 'Mirador Autóctonos',
                      description:
                          'Disfruta de una experiencia cultural única.',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            PlaceCard(
              imageUrl: 'assets/images/Tesorito1.jpeg',
              title: 'Mirador Ancón Tesorito',
              description: 'Uno de los mejores miradores en Ibagué...',
              location: 'Ciudad: Ibagué',
              price: '\$10.000 (Entrada) cuenta con restaurante',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MiradorAnconTesoritoScreen(
                      title: 'Mirador Ancón Tesorito',
                      description: 'Una vista que te dejará sin aliento.',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            PlaceCard(
              imageUrl: 'assets/images/imagenJardinBotanico1.jpeg',
              title: 'Jardín Botánico',
              description: 'Patrimonio cultural',
              location: 'Ciudad: Ibagué',
              price: 'desde 2.000',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JardinBotanicoSanJorgeScreen(
                      title: 'Jardín Botánico',
                      description: 'Conéctate con la naturaleza.',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: 'Rutas Ambalá'),
            PlaceCard(
              imageUrl: 'assets/images/meraki2.jpeg',
              title: 'Mirador Meraki',
              description: 'Hermoso parque con vistas espectaculares...',
              location: 'Ciudad: Ibagué',
              price: 'precios de la carta y servicios',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ParqueTematicoMeraki(
                      title: 'Mirador Meraki',
                      description:
                          'Donde la cultura y la naturaleza se encuentran.',
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            PlaceCard(
              imageUrl: 'assets/images/meraki2.jpeg',
              title: 'Mirador Las Cabañas',
              description: 'Hermoso mirador con vistas espectaculares...',
              location: 'Ciudad: Ibagué',
              price: '\$19.000',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MiradorCabanasScreen(
                      title: 'Mirador Las Cabañas',
                      description: 'Un lugar mágico para relajarte.',
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 187, 228, 157),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.5),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
