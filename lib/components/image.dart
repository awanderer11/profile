import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  final String image;

  const ImageWrapper({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      child: Image.asset(image, height: width / 1.880, fit: BoxFit.cover),
    );
  }
}
