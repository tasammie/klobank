import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  final Color customColor = const Color(0xD9D9D9);
  final Color logoColor = const Color(0xFF0F2E6B);
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/screen1.png',
              color: logoColor,
              width: 180,
            ),
            Image.asset(
              'assets/images/screen3_img1.png',
              width: 350,
              fit: BoxFit.contain,
            ),
            const Column(
              children: [
                Text(
                  'Pay your various bills fast and without hassle',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'With all your cryptocurrencies in one spot, managing them is made simple.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
