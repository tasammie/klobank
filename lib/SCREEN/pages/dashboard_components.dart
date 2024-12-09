import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
import 'package:flutter/services.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    const String userName = "John Doe";
    return Row(
      children: [
        // CircleAvatar(
        //   radius: 30,
        //   backgroundColor: Colors.grey.shade300,
        //   child: Text(
        //     userName[0],
        //     style: const TextStyle(
        //       fontSize: 24,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        const SizedBox(width: 15),
        const Expanded(
          child: Text(
            'Hi, $userName',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add Money',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.buttonAndLogoColor,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.add,
                size: 30,
                color: AppColors.buttonAndLogoColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


