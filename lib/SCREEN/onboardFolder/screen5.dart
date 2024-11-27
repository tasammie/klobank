import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/auth/login.dart';
import 'package:klobank/SCREEN/auth/signup.dart';
import 'package:klobank/SCREEN/home_page.dart';

class Screen5 extends StatelessWidget {
  final Color customColor = const Color(0xFFD9D9D9);
  final Color logoColor = const Color(0xFF0F2E6B);
  final Color backgroundColor = Colors.white;

  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            // Top content: Logo and Image
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/screen1.png',
                      color: logoColor,
                      width: 140,
                    ),
                    const SizedBox(height: 70),
                    Image.asset(
                      'assets/images/screen6.png',
                      width: 320,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.05,
              left: 20,
              right: 20,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black.withOpacity(0.1),
                  //     blurRadius: 10,
                  //     offset: const Offset(0, 4),
                  //   ),
                  // ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Maximize Your Savings',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'With all your cryptocurrencies in one spot, managing them is made simple.',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),

                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: logoColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 130, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: backgroundColor,
                        ),
                      ),
                    ),

                    // Registration button
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: backgroundColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 90, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: logoColor,
                            width: 0.70,
                          ),
                        ),
                      ),
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: logoColor,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
