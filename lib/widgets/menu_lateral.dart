import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
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
              // Aquí puedes agregar la navegación a la pantalla de Inicio
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Publicar reseñas y novedades'),
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
              // Aquí puedes agregar la navegación a la pantalla de Acerca de
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contacto'),
            onTap: () {
              Navigator.pop(context); // Cerrar el menú
              // Aquí puedes agregar la navegación a la pantalla de Contacto
            },
          ),
        ],
      ),
    );
  }
}
