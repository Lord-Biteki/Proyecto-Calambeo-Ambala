import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Mirador%20las%20caba%C3%B1as/mapa_RutaCaba%C3%B1as.dart';
import 'package:interfaz_principal_real/screens/galeria/galeryHome.dart';
import 'package:interfaz_principal_real/widgets/custom_buttons_section.dart';
import '../../../widgets/carousel_widget.dart';

class MiradorCabanasScreen extends StatelessWidget {
  final String title;
  final String description;

  const MiradorCabanasScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirador Las Cabañas'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carrusel de imágenes
            const CustomCarousel(
              imagePaths: [
                'assets/images/cabanas1.jpg',
                'assets/images/cabanas2.jpg',
                'assets/images/cabanas3.jpg',
                'assets/images/cabanas4.jpg',
                'assets/images/cabanas5.jpg',
              ],
              height: 200,
              autoPlay: true,
              viewportFraction: 0.9,
            ),
            const SizedBox(height: 20),

            // Descripción del lugar
            const Text(
              'Descripción',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'El Mirador Las Cabañas ofrece una experiencia única de contacto con la naturaleza y vistas espectaculares de la ciudad de Ibagué. Un destino ideal para descansar y disfrutar con familia y amigos.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Horarios de atención
            const Text(
              'Horarios de Atención',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lunes a Viernes: 8:00 AM - 6:00 PM\nSábados y Domingos: 8:00 AM - 8:00 PM',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Servicios
            const Text(
              'Servicios',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text(
              '• Mirador con vistas espectaculares\n'
              '• Zona de camping\n'
              '• Senderismo\n'
              '• Actividades recreativas\n'
              '• Jacuzzi relajante\n'
              '• Camas y dormitorios\n',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Restaurante y Carta
            const Text(
              'Restaurante y Carta',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text(
              'Disfruta de nuestra deliciosa oferta gastronómica:\n'
              '• Platos típicos\n'
              '• Bebidas artesanales\n'
              '• Postres caseros',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Sobre Nosotros
            const Text(
              'Sobre Nosotros',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text(
              'Somos un lugar diseñado para ofrecer tranquilidad y conexión con la naturaleza, destacándonos por nuestro servicio amable y la calidad de nuestras instalaciones.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Líneas de atención
            const Text(
              'Líneas de Atención',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(height: 8),
            const Text(
              'Teléfono: +57 3208954713\nEmail: contacto@miradorcabanas.com',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            CustomButtonsSection(
              onRouteButtonPressed: () {
                // Lógica para abrir la ruta
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapaRutaCabanasScreen(),
                  ),
                );
              },
              onPhotosButtonPressed: () {
                // Lógica para abrir la galería de fotos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GaleryHome(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 240, 245, 230),
    );
  }
}
