import 'package:flutter/material.dart';
import '../../../widgets/carousel_widget.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/custom_buttons_section.dart';
import '../../principal/paginas_rutas.dart';
import 'mapa_RutaAutoctonos.dart';

class MiradorAutoctonosScreen extends StatelessWidget {
  final String title;
  final String description;

  const MiradorAutoctonosScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirador Autóctonos'),
        backgroundColor: Colors.green[700], // Color del AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mirador Autoctonos',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            // Carrusel de imágenes del lugar
            // Reemplazo del Carrusel utilizando el widget desacoplado
            const Center(
              child: CustomCarousel(
                imagePaths: [
                  'assets/images/autoctonos.jpeg',
                  'assets/images/autoctonos1.jpeg',
                  'assets/images/autoctonos2.jpeg',
                  'assets/images/autoctonos3.jpeg',
                ],
                height: 200,
                autoPlay: true,
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 20),
            const SizedBox(height: 20),

            // Descripción del lugar
            const Text(
              'El Mirador Autóctonos ofrece vistas espectaculares de la ciudad. Este sitio, ubicado en Ibagué, es ideal para quienes buscan un espacio tranquilo rodeado de naturaleza y con vistas incomparables. Cuenta con un restaurante con una carta bastante variada con precios accesibles para cualquier publico',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20),

            // Horarios de atención
            Text(
              'Horarios de atención:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
            const SizedBox(height: 5),
            const Text('• Lunes a viernes: 3:00 pm - 7:00 pm'),
            const Text('• Sábados y domingos: 9:00 am - 6:00 pm'),
            const SizedBox(height: 30),

            // Platos a la carta y espacio para imagen
            Text(
              'Platos a la Carta',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              '• Comida típica.\n'
              '• Platos internacionales.\n'
              '• Postres variados.\n'
              '• Bebidas naturales y refrescantes.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/autoctonos3.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Sobre nosotros
            Text(
              "Sobre Nosotros",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Somos un equipo comprometido con ofrecer una experiencia única en un ambiente natural y acogedor, compartiendo la riqueza cultural y gastronómica de la región.',
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 30),

            // Líneas de comunicación
            Text(
              "Líneas de Comunicación",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              '• Teléfono: +57 123 456 7890\n'
              '• Email: soporte@miradorautoctonos.com\n'
              '• Redes Sociales: @miradorautoctonos',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            // Sección de botones desacoplados
            CustomButtonsSection(
              onRouteButtonPressed: () {
                // Lógica para abrir la ruta
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapaRutaAutoctonos(),
                  ),
                );
              },
              onPhotosButtonPressed: () {
                // Lógica para abrir la galería de fotos
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaginaRutas(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
