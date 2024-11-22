import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  final double imageSize; // Allow image size to be adjustable
  final Color customColor = const Color(0xFF0F2E6B);

  IntroScreen({super.key, this.imageSize = 500.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customColor,
      child: Center(
        child: Image.asset(
          'assets/images/screen1.png',
          width: imageSize,
          height: imageSize,
        ),
      ),
    );
  }
}
