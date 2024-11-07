import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Jardin%20Botanico%20San%20Jorge/mapa_RutaJardinBotanico.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../gallery_home.dart';

class JardinBotanicoSanJorgeScreen extends StatelessWidget {
  const JardinBotanicoSanJorgeScreen({super.key});

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

            // Espacio para una imagen del lugar
            Center(
              child: Container(
                height: 200,
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
                    'assets/images/jardin_botanico.jpg', // Reemplaza con la imagen del Jardín Botánico
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Mapa físico del lugar',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
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
              '• Tienda de souvenirs: Recuerdos y productos locales a la venta.',
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
            // Botón de la ruta
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapaRutajardinbotanico(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[600],
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadowColor: Colors.black45,
                      elevation: 10,
                    ),
                    child: const Text(
                      '¿Te gustaría saber la ruta para llegar? Dale click aquí',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GalleryHome(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[600],
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      shadowColor: Colors.black45,
                      elevation: 10,
                    ),
                    child: const Text(
                      '¿Te gustaría ver las fotos que hay del sitio? Dale click aquí',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
