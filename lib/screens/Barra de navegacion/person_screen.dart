// archivo: lib/screens/person_screen.dart

import 'package:flutter/material.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Persona'),
      ),
      body: const Center(
        child: Text('Esta es la pantalla de persona'),
      ),
    );
  }
}
