import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/home_page.dart';
import 'package:klobank/SCREEN/onboardFolder/introScreen1.dart';
import 'package:klobank/SCREEN/onboardFolder/screen2.dart';
import 'package:klobank/SCREEN/onboardFolder/screen3.dart';
import 'package:klobank/SCREEN/onboardFolder/screen4.dart';
import 'package:klobank/SCREEN/onboardFolder/screen5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentPageIndex = 0;

  final List<String> nextButtonImages = [
    '', 
    'assets/images/screen2_img2.png',
    'assets/images/screen3_img2.png',
    'assets/images/screen4_img2.png',
    'assets/images/screen5_img2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            children: [
              IntroScreen(),
              const Screen2(),
              const Screen3(),
              const Screen4(),
              const Screen5(),
            ],
          ),
          if (currentPageIndex > 0) 
            Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(), 
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 5, 
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentPageIndex < 4) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const HomePage(), 
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      nextButtonImages[
                          currentPageIndex], 
                      width: 50, 
                      height: 50, 
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
