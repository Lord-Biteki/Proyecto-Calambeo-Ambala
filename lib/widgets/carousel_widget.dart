// archivo: lib/widgets/carousel_widget.dart

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatelessWidget {
  final List<String> imgList;

  const CarouselWidget({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: true,
        viewportFraction: 1.0, // Asegúrate de que ocupe toda la pantalla
      ),
      items: imgList
          .map((item) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item),
                    fit: BoxFit
                        .cover, // Ajusta la imagen al tamaño del contenedor
                  ),
                ),
              ))
          .toList(),
    );
  }
}
