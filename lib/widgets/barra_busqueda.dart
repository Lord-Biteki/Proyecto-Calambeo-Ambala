import 'package:flutter/material.dart';

// Widget reutilizable para la barra de búsqueda
class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String hintText;

  const SearchAppBar({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          const Text('Buscar', style: TextStyle(fontWeight: FontWeight.bold)),
      backgroundColor: Colors.green, // Cambia el color según tu preferencia
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              filled: true,
              fillColor: Colors.white.withOpacity(0.8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.all(15),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(80); // Altura total del AppBar
}
