import 'package:flutter/material.dart';

class BarraLateral extends StatelessWidget {
  const BarraLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Principal'),
        leading: IconButton(
          icon: const Icon(Icons.menu), // Icono de tres líneas
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Abre el menú lateral
          },
        ),
        backgroundColor: Colors.green[700], // Color de la app bar
      ),
      drawer: const CustomDrawer(), // Menú lateral
      body: const Center(
        child: Text(
          'Contenido de la página principal',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green[700], // Color de fondo del header
            ),
            child: const Text(
              'Menú de Navegación',
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
              Navigator.pop(context); // Cierra el drawer al hacer click
              // Aquí puedes navegar a una nueva pantalla
            },
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Mapa'),
            onTap: () {
              Navigator.pop(context);
              // Aquí puedes agregar la navegación a otra pantalla
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Acerca de'),
            onTap: () {
              Navigator.pop(context);
              // Aquí puedes agregar la navegación a otra pantalla
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BarraLateral(),
  ));
}
