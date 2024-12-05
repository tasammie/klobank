import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
// import 'package:flutter/services.dart';

class BalanceScreen2 extends StatelessWidget {
  const BalanceScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    const String amount = "0.00";

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.buttonAndLogoColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You Owe',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.grey[300],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '# $amount',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background_color,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Implement visibility toggle functionality
                },
                child: const Icon(
                  Icons.visibility,
                  color: AppColors.background_color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Repayment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background_color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
