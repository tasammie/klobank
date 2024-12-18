import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle "See all" action
                },
                child: const Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonAndLogoColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Transactions List
          const TransactionCard(
            icon: Icons.receipt_long,
            title: 'Loan Repayment',
            time: '10:30pm',
            amount: '- ₦1,800,400',
            amountColor: Colors.red,
          ),
          const SizedBox(height: 8),
          const TransactionCard(
            icon: Icons.account_balance_wallet,
            title: 'Wallet Top Up',
            time: '5:45pm',
            amount: '+ ₦2,500',
            amountColor: Colors.green,
          ),
          const SizedBox(height: 8),
          const TransactionCard(
            icon: Icons.person,
            title: 'Victor Isaac',
            time: '10:45pm',
            amount: '+ ₦800,000',
            amountColor: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Load More...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TransactionCard(
            icon: Icons.receipt_long,
            title: 'Loan Repayment',
            time: '10:30pm',
            amount: '- ₦1,800,400',
            amountColor: Colors.red,
          ),
          const SizedBox(height: 8),
          const TransactionCard(
            icon: Icons.account_balance_wallet,
            title: 'Wallet Top Up',
            time: '5:45pm',
            amount: '+ ₦2,500',
            amountColor: Colors.green,
          ),
          const SizedBox(height: 8),
          const TransactionCard(
            icon: Icons.person,
            title: 'Victor Isaac',
            time: '10:45pm',
            amount: '+ ₦800,000',
            amountColor: Colors.green,
          ),
        ],
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;
  final String amount;
  final Color amountColor;

  const TransactionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.time,
    required this.amount,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, color: Colors.blue, size: 24),
          ),
          const SizedBox(width: 12),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // Amount
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: amountColor,
            ),
          ),
        ],
      ),
    );
  }
}
