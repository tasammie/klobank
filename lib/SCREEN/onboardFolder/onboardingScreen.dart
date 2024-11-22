import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/onboardFolder/introScreen1.dart';
import 'package:klobank/SCREEN/onboardFolder/screen2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroScreen(),
              Screen2(),
            ],
          )
        ],
      ),
    );
  }
}
