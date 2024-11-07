import 'package:flutter/material.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../gallery_home.dart';
import 'mapa_RutaAnconTesorito.dart';

class MiradorAnconTesoritoScreen extends StatelessWidget {
  const MiradorAnconTesoritoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mirador Ancón Tesorito'),
        backgroundColor: Colors.green[700], // Color del AppBar
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
                    'assets/images/mirador_ancón_tesorito.jpg', // Reemplaza con la imagen del lugar
                    fit: BoxFit.cover,
                  ),
                ),
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
              '• Mirador con vistas panorámicas.\n'
              '• Área de picnic.\n'
              '• Guías turísticos disponibles.',
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

            // Espacio para una imagen
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
                    'assets/images/restaurante_carta.jpg', // Reemplaza con tu imagen
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

            // Botón de la ruta
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RutaAnconTesoritoScreen(),
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
