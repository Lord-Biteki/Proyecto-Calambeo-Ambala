import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/galeria/galeryHome.dart';
import '../../../widgets/carousel_widget.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/custom_buttons_section.dart';
import 'mapa_RutaAnconTesorito.dart';

class MiradorAnconTesoritoScreen extends StatelessWidget {
  final String title;
  final String description;

  const MiradorAnconTesoritoScreen({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirador Ancón Tesorito'),
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mirador Ancón Tesorito',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Este es el resultado de la creatividad e innovación de una familia campesina, quien se dio a la tarea de emprender con este maravilloso proyecto a la vista de los ibaguereños. En la vereda Ancón Tesorito de Ibagué, existe un lugar que combina la gastronomía exquisita y las buenas vistas que tiene el Tolima, para dar paso al Mirador Tesorito, un nuevo sitio de recreación que llegó a la ciudad. Este lugar esta fundado por una humilde pero emprendedora familia campesina que quiso aprovechar lo que sus alrededores les ofrecen para llevar la naturaleza a la vida de los ciudadanos.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),

            // Reemplazo del Carrusel utilizando el widget desacoplado
            const Center(
              child: CustomCarousel(
                imagePaths: [
                  'assets/images/Tesorito.jpeg',
                  'assets/images/Tesorito1.jpeg',
                  'assets/images/Tesorito2.jpeg',
                  'assets/images/Tesorito3.jpeg',
                  'assets/images/tesorito4.jpeg',
                  'assets/images/tesorito5.jpeg',
                ],
                height: 200,
                autoPlay: true,
                viewportFraction: 0.8,
              ),
            ),
            const SizedBox(height: 20),

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

            // Sección Servicios
            Text(
              'Servicios',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              '• Comida típica.\n'
              '• Mirador con vistas panorámicas a la ciudad de ibague.\n'
              '• Área de picnic.\n'
              '• Guías turísticos disponibles.\n'
              '• Bebida gratis al subir y pagar la entrada.\n'
              '• Servicio de parqueadero',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            // Sección Restaurante y Carta
            Text(
              'Restaurante y carta',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),

            // Imagen del restaurante
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
                    'assets/images/tesorito5.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Disfruta de una variada selección de platos típicos con ingredientes locales frescos. Nuestro restaurante es reconocido por su ambiente acogedor y vistas inigualables.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

            Text(
              "Sobre nosotros",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            const SizedBox(height: 15),

            const Text(
              'Somos una familia comprometida con el desarrollo sostenible y la promoción de la cultura local a través de la gastronomía. Te invitamos a disfrutar de nuestra pasión por la comida y la naturaleza.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 30),

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
              '• Teléfono: +57 3138211314 - +57 3228786095\n'
              '• Redes Sociales: @miradorancontesorito',
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
                    builder: (context) => const RutaAnconTesoritoScreen(),
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
