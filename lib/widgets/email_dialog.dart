// archivo: lib/widgets/email_dialog.dart

import 'package:flutter/material.dart';

class EmailDialog {
  static void show(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.black,
          title: const Text(
            'Registro de Correo Electrónico',
            style: TextStyle(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '¿Desea registrarse para recibir notificaciones?',
                style: TextStyle(color: Colors.white),
              ),
              TextField(
                style: const TextStyle(color: Colors.white),
                controller: emailController,
                decoration: const InputDecoration(
                    hintText: 'Ingrese su correo electrónico'),
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Acción para cancelar
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Aquí puedes manejar el registro del correo electrónico
                String email = emailController.text;
                if (email.isNotEmpty) {
                  // Guardar el correo o enviar a un servidor
                  print('Correo registrado: $email'); // Esto es solo un ejemplo
                }
                Navigator.of(context).pop(); // Cierra el diálogo
              },
              child: const Text('Registrar'),
            ),
          ],
        );
      },
    );
  }
}
