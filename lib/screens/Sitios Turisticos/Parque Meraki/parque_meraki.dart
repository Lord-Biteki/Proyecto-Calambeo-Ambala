import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Parque%20Meraki/mapa_RutaParqueMeraki.dart';
import 'package:interfaz_principal_real/screens/galeria/galeryHome.dart';
import '../../../widgets/carousel_widget.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/custom_buttons_section.dart';

class ParqueTematicoMeraki extends StatelessWidget {
  final String title;
  final String description;

  const ParqueTematicoMeraki({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parque Temático Meraki'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Parque Temático Meraki',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 20),
            // Reemplazado con el widget de carrusel
            const Center(
              child: CustomCarousel(
                imagePaths: [
                  'assets/images/meraki.jpeg',
                  'assets/images/maraki1.jpeg',
                  'assets/images/meraki2.jpeg',
                  'assets/images/meraki3.jpeg',
                ],
                height: 200,
                autoPlay: true,
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20),
            // Descripción
            const Text(
              'El Parque Temático Meraki es un espacio de recreación y aprendizaje que busca conectar a las familias con la naturaleza a través de actividades interactivas y educativas. Ubicado en un entorno natural privilegiado, ofrece diversas atracciones que incluyen senderos ecológicos, áreas de picnic, y actividades lúdicas para todas las edades.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            // Carta y platos
            Text(
              'Carta y Platos del Lugar',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/Comida.jpeg'), // Ruta de la imagen
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black
                      .withOpacity(0.4), // Efecto de opacidad para el texto
                ),
                child: const Text(
                  'Imagen de la Carta',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ofrecemos una variedad de platos típicos de la región, preparados con ingredientes frescos y de calidad. Desde aperitivos hasta platos principales, cada opción está diseñada para complacer los paladares de nuestros visitantes.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            // Servicios
            Text(
              'Servicios',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Senderos ecológicos\n'
              '• Áreas de picnic\n'
              '• Actividades interactivas\n'
              '• Restaurantes y cafeterías\n'
              '• Tienda de souvenirs',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Horarios de atención
            Text(
              'Horarios de Atención',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Lunes a Viernes: 9:00 am - 5:00 pm\n'
              '• Sábados y Domingos: 9:00 am - 6:00 pm',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Costos
            Text(
              'Costos',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Adultos: 15,000 COP\n'
              '• Niños: 10,000 COP\n'
              '• Descuentos especiales para grupos.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
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
              '• Teléfono: +57 318 7156890\n'
              '• Email: contactenos@corporacionsanjorge.com\n'
              '• Redes Sociales: @parquetematicomeraqui',
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
                    builder: (context) =>
                        const MapaParqueTematicoMerakiScreen(),
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
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
