import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final Color customColor =
      const Color(0xFFD9D9D9); // Adjusted the hex value format for consistency
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/images/screen1.png',
            color: Colors.black,
            width: 160,
            height: 50,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/screen2_img1.png', width: 400),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Manage all cryptofolio in a single place',
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'With all your cryptocurrencies in one spot, managing them is made simple',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
      // backgroundColor: customColor,
