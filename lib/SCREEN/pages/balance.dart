import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:klobank/SCREEN/pages/balanceDashboard/balance1.dart';
import 'package:klobank/SCREEN/pages/balanceDashboard/balance2.dart';

class BalanceCarousel extends StatefulWidget {
  const BalanceCarousel({super.key});

  @override
  State<BalanceCarousel> createState() => _BalanceCarouselState();
}

class _BalanceCarouselState extends State<BalanceCarousel> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _indicator() {
    return GestureDetector(
      onTap: () {},
      child: SmoothPageIndicator(
        controller: _pageController,
        count: 2,
        effect: const ExpandingDotsEffect(
          activeDotColor: AppColors.buttonAndLogoColor,
          dotColor: AppColors.buttonAndLogoColor,
          dotHeight: 10,
          dotWidth: 10,
          expansionFactor: 3,
          spacing: 8,
        ),
        onDotClicked: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 150,
          child: PageView(
            controller: _pageController,
            children: const [
              BalanceScreen1(),
              BalanceScreen2(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        _indicator(),
      ],
    );
  }
}
