import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Jardin%20Botanico%20San%20Jorge/mapa_RutaJardinBotanico.dart';
import 'package:interfaz_principal_real/screens/galeria/galeryHome.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/carousel_widget.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/custom_buttons_section.dart';
import '../../principal/paginas_rutas.dart';

class JardinBotanicoSanJorgeScreen extends StatelessWidget {
  final String title;
  final String description;

  const JardinBotanicoSanJorgeScreen({
    super.key,
    required this.title,
    required this.description,
  });

  // Función para abrir la URL
  void _launchURL() async {
    const url = 'https://corporacionsanjorge.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se puede abrir $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jardín Botánico San Jorge'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jardín Botánico San Jorge',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color:
                    Colors.green[800], // Color verde llamativo para el título
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: CustomCarousel(
                imagePaths: [
                  'assets/images/imagenJardinBotanico1.jpeg',
                  'assets/images/imagenJardinBotanico2.jpeg',
                  'assets/images/botanico3.jpeg',
                  'assets/images/botanico4.png',
                  'assets/images/botanico5.jpeg',
                  'assets/images/botanico6.jpeg',
                ],
                height: 200,
                autoPlay: true,
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  image: AssetImage(
                      'assets/images/botanico5.jpeg'), // Ruta de la imagen
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              'Descripción',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Color verde llamativo
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ubicado en las colinas de la ciudad de Ibagué, el Jardín Botánico San Jorge es un refugio de biodiversidad que ofrece una inmersión única en la naturaleza de la región andina. Con una extensión de aproximadamente 7 hectáreas, este jardín es hogar de una gran variedad de especies de flora y fauna nativas, convirtiéndose en un lugar ideal tanto para el estudio ecológico como para el turismo ambiental.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'El jardín presenta diversos senderos ecológicos que llevan a los visitantes a través de paisajes de selva y áreas de bosque seco tropical, características de la región. Durante el recorrido, es común encontrar especies de árboles endémicos, plantas medicinales y más de 200 especies de aves, lo que convierte al lugar en un paraíso para los amantes de la observación de aves y la fotografía de naturaleza.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'Además de su riqueza natural, el Jardín Botánico San Jorge también cumple un importante rol educativo y de investigación, con programas dirigidos a la conservación de ecosistemas y talleres de educación ambiental para la comunidad y visitantes. El espacio cuenta con áreas de descanso, zonas de picnic y miradores naturales, desde los cuales se pueden apreciar espectaculares vistas de la ciudad de Ibagué y sus alrededores.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              'El jardín es un ejemplo de los esfuerzos de Ibagué por promover el ecoturismo y la protección de su patrimonio natural, ofreciendo una experiencia relajante y enriquecedora para todos sus visitantes.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            Text(
              'Horarios de Atención',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Color verde llamativo
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Lunes a Viernes: 8:00 am - 5:00 pm',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '• Sábados: 9:00 am - 4:00 pm',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '• Domingos y Festivos: 10:00 am - 3:00 pm',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Sección Costes
            Text(
              'Costes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Color verde llamativo
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Entrada general: 5,000 COP\n'
              '• Niños menores de 12 años: 2,000 COP\n'
              '• Estudiantes: 3,000 COP con carnet.\n'
              '• Grupos de más de 10 personas: 4,000 COP por persona.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Sección Sobre nosotros
            Text(
              'Sobre Nosotros',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Color verde llamativo
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'El Jardín Botánico San Jorge fue fundado con el objetivo de preservar y promover la biodiversidad de la región andina. Nuestro equipo está comprometido con la conservación de especies nativas y la educación ambiental. A través de nuestros programas, buscamos crear conciencia sobre la importancia de proteger nuestro entorno natural.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Sección Servicios
            Text(
              'Servicios',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green[800], // Color verde llamativo
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '• Visitas guiadas: Aprende sobre la flora y fauna del jardín.\n'
              '• Talleres educativos: Actividades para niños y adultos sobre conservación.\n'
              '• Espacios para eventos: Zonas disponibles para reuniones y celebraciones.\n'
              '• Tienda de souvenirs: Recuerdos y productos locales a la venta.\n'
              '• Avistamiento de aves y jardin medicinal.\n',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            Text(
              'Página web del sitio turístico para más información',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _launchURL,
              child: const Card(
                color: Colors.black,
                child: Text(
                  'https://corporacionsanjorge.com/',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
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
              '• Teléfono: +57 313 3783055\n'
              '• Email: contactenos@corporacionsanjorge.com\n'
              '• Redes Sociales: @jardinbotanicosanjorge',
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
                    builder: (context) => const MapaRutajardinbotanico(),
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
