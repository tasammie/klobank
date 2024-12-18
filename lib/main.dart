import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/home_page.dart';
import 'package:klobank/SCREEN/onboardFolder/onboardingScreen.dart';
import 'package:klobank/SCREEN/pages/bills_screens/bills_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => OnboardingScreen(),
        // "/home": (context) => const HomePage(),
        "/bill": (context) => const BillsHomePage(),
      },
    );
  }
}
