import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';

class BalanceScreen1 extends StatefulWidget {
  const BalanceScreen1({super.key});

  @override
  _BalanceScreen1State createState() => _BalanceScreen1State();
}

class _BalanceScreen1State extends State<BalanceScreen1> {
  bool isAmountVisible = true;

  @override
  Widget build(BuildContext context) {
    const String bankName = "Wema Bank";
    const String accountNumber = "0110321290";
    const String amount = "2,444,444";

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
            'Account Balance',
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
              Text(
                isAmountVisible ? '₦ $amount' : '*****',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background_color,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAmountVisible = !isAmountVisible;
                  });
                },
                child: Icon(
                  isAmountVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.background_color,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "$bankName  $accountNumber",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.background_color,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(
                    const ClipboardData(text: "$bankName  $accountNumber"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Copied to clipboard'),
                    ),
                  );
                },
                child: const Icon(
                  Icons.copy,
                  color: AppColors.background_color,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
