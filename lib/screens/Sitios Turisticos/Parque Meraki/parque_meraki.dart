import 'package:flutter/material.dart';
import 'package:interfaz_principal_real/screens/Sitios%20Turisticos/Parque%20Meraki/mapa_RutaParqueMeraki.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../gallery_home.dart';

class ParqueTematicoMeraki extends StatelessWidget {
  const ParqueTematicoMeraki({super.key});

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
            // Espacio para imagen del parque
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Text(
                  'Imagen del Parque Temático Meraki',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
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
              ),
              child: const Center(
                child: Text(
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

            // Botón para ver la ruta
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const MapaParqueTematicoMerakiScreen(),
                    ),
                  ); // Aquí puedes agregar la navegación a la pantalla de ruta
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  '¿Te gustaría saber la ruta para llegar? Dale click aquí',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botón para ver las fotos
            Center(
              child: ElevatedButton(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
