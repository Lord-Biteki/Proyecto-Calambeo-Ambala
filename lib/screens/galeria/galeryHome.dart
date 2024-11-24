import 'package:flutter/material.dart';

class GaleryHome extends StatelessWidget {
  const GaleryHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> categorias = [
      {
        'titulo': 'Mirador Tesorito',
        'fotos': [
          'assets/images/Tesorito.jpeg',
          'assets/images/Tesorito1.jpeg',
          'assets/images/Tesorito2.jpeg',
          'assets/images/Tesorito3.jpeg',
          'assets/images/Tesorito4.jpeg',
          'assets/images/Tesorito5.jpeg',
        ],
      },
      {
        'titulo': 'Mirador Cabañas',
        'fotos': [
          'assets/images/cabanas1.jpg',
          'assets/images/cabanas2.jpg',
          'assets/images/cabanas3.jpg',
          'assets/images/cabanas4.jpg',
          'assets/images/cabanas5.jpg',
        ],
      },
      {
        'titulo': 'Jardin botanico',
        'fotos': [
          'assets/images/imagenJardinBotanico1.jpeg',
          'assets/images/imagenJardinBotanico2.jpeg',
          'assets/images/botanico3.jpeg',
          'assets/images/botanico4.jpeg',
          'assets/images/botanico5.jpeg',
          'assets/images/botanico6.jpeg',
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería de Fotos'),
        backgroundColor: Colors.green[700],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          final categoria = categorias[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoria['titulo'],
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: categoria['fotos'].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Tres columnas
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, photoIndex) {
                  final fotoPath = categoria['fotos'][photoIndex];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenGallery(
                            fotos: categoria['fotos'],
                            initialIndex: photoIndex,
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        fotoPath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}

class FullScreenGallery extends StatefulWidget {
  final List<String> fotos;
  final int initialIndex;

  const FullScreenGallery({
    super.key,
    required this.fotos,
    required this.initialIndex,
  });

  @override
  State<FullScreenGallery> createState() => _FullScreenGalleryState();
}

class _FullScreenGalleryState extends State<FullScreenGallery> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.fotos.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTapUp: (details) {
              final width = MediaQuery.of(context).size.width;
              final dx = details.globalPosition.dx;
              if (dx < width / 2 && index > 0) {
                _pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else if (dx >= width / 2 && index < widget.fotos.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Center(
              child: Image.asset(
                widget.fotos[index],
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }
}
