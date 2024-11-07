import 'package:flutter/material.dart';
import 'dart:async'; // Para programar cambios automáticos
import '../screens/gallery_home.dart';
import '../widgets/email_dialog.dart'; // Importamos el diálogo de correo

class UiPrincipal extends StatefulWidget {
  const UiPrincipal({super.key});

  @override
  _UiPrincipalState createState() => _UiPrincipalState();
}

class _UiPrincipalState extends State<UiPrincipal> {
  final List<String> imgList = [
    'assets/images/image (1).jpeg',
    'assets/images/image (1).jpg',
    'assets/images/image (2).jpeg',
    'assets/images/image (2).jpg',
    'assets/images/image (3).jpeg',
  ];

  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Timer para cambiar las imágenes cada 5 segundos
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % imgList.length;
      });
    });

    // Mostrar el diálogo al cargar la pantalla
    WidgetsBinding.instance.addPostFrameCallback((_) {
      EmailDialog.show(
          context); // Mostramos el diálogo cuando se construye la UI
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Detenemos el timer cuando el widget se destruye
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explora Calambeo - Ambala'),
        backgroundColor: Colors.green[700],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Icono de tres líneas
              onPressed: () {
                Scaffold.of(context).openDrawer(); // Abre el menú lateral
              },
            );
          },
        ),
      ),
      drawer: _buildMenuLateral(), // Agregamos el menú lateral
      body: Stack(
        children: [
          // Fondo animado con AnimatedSwitcher
          AnimatedSwitcher(
            duration: const Duration(seconds: 2),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Image.asset(
              imgList[_currentIndex],
              key: ValueKey<int>(_currentIndex),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          // Contenido superior
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Bienvenido a Explora Calambeo - Ambala',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black45,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Busca un destino o palabra clave',
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCategoryButton(context, 'Galería',
                          Icons.image_search, GalleryHome()),
                      const SizedBox(width: 10),
                      _buildCategoryButton(
                          context,
                          'Sitios Turísticos',
                          Icons.place,
                          GalleryHome()), // Nuevo botón para Sitios Turísticos
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir el menú lateral
  Widget _buildMenuLateral() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Menú Principal',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context); // Cerrar el menú al seleccionar
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Acerca de'),
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contacto'),
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
            },
          ),
        ],
      ),
    );
  }

  // Método para construir los botones de categoría
  Widget _buildCategoryButton(
      BuildContext context, String title, IconData icon, Widget screen) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.all(15),
          ),
          child: Icon(icon, size: 30, color: Colors.white),
        ),
        Text(title, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}
