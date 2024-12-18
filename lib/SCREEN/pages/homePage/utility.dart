import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';

class UtilitySection extends StatelessWidget {
  const UtilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      // padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UtilityBox(
            icon: Icons.phone_android,
            text: 'Airtime',
          ),
          UtilityBox(
            icon: Icons.wifi,
            text: 'Data',
          ),
          UtilityBox(
            icon: Icons.tv,
            text: 'Cable TV',
          ),
          UtilityBox(
            icon: Icons.lightbulb_outline_sharp,
            text: 'Electricity',
          ),
        ],
      ),
    );
  }
}

class UtilityBox extends StatelessWidget {
  final IconData icon;
  final String text;

  const UtilityBox({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 30.0,
              color: AppColors.buttonAndLogoColor,
            ),
          ),
          const SizedBox(height: 12.0),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              color: AppColors.buttonAndLogoColor,
            ),
          ),
        ],
      ),
    );
  }
}
