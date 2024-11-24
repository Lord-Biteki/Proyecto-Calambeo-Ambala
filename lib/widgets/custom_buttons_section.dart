import 'package:flutter/material.dart';

class CustomButtonsSection extends StatelessWidget {
  final VoidCallback onRouteButtonPressed;
  final VoidCallback onPhotosButtonPressed;

  const CustomButtonsSection({
    super.key,
    required this.onRouteButtonPressed,
    required this.onPhotosButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onRouteButtonPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[600],
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
          onPressed: onPhotosButtonPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange[600],
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
    );
  }
}
