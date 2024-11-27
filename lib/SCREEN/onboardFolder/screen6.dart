import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  final Color customColor = const Color(0xD9D9D9);
  final Color logoColor = const Color(0xFF0F2E6B);
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/screen1.png',
              // color: logoColor,
              width: 180,
            ),
          ],
        ),
      ),
    );
  }
}
