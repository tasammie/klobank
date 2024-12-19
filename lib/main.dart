import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/auth/login.dart';
import 'package:klobank/SCREEN/auth/signup.dart';
import 'package:klobank/SCREEN/onboardFolder/onboardingScreen.dart';
import 'package:klobank/SCREEN/pages/bills_screens/bills_home_page.dart';
import 'package:klobank/SCREEN/pages/homePage/dashboard.dart';
import 'package:klobank/SCREEN/pages/loan_screens/loan_page.dart';
import 'package:klobank/SCREEN/pages/more_screens/more_page.dart';

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
        "/": (context) => const OnboardingScreen(),
           "/login": (context) => const LoginPage(),
            "/SignupPage": (context) => const SignupPage(), 
         "/dashboard": (context) => const DashboardPage(),
        "/loan": (context) => const LoanHomePage(),
        "/bill": (context) => const BillsHomePage(),
        "/more": (context) => const MoreHomePage()
      },
    );
  }
}
