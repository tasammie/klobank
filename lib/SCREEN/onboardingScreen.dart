import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/onboarding_data.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  final String logoPath = 'lib/assets/images/screen1.png';

  var onboardingData = OnboardingClass().array;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == onboardingData.length - 1);
              });
            },
            itemCount: onboardingData.length,
            itemBuilder: (context, index) {
              final data = onboardingData[index];
              return Container(
                color: Colors.blueAccent.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (index != 0)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Image.asset(logoPath),
                      ),

                    Image.asset(
                      data['image'] ?? '',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 20),

                    // Main text
                    Text(
                      data['mainText']!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),

                    // Subtext
                    Text(
                      data['subText']!,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const Spacer(),

                    // Navigation button with custom image
                    GestureDetector(
                      onTap: () {
                        if (onLastPage) {
                          // Navigate to the next screen
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Image.asset(
                        data['buttonImage']!,
                        height: 200,
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
