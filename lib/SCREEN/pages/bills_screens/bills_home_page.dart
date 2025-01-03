import 'package:flutter/material.dart';

class BillsHomePage extends StatefulWidget {
  const BillsHomePage({super.key});

  @override
  State<BillsHomePage> createState() => _BillsHomePageState();
}

class _BillsHomePageState extends State<BillsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bills',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'You have 3 unpaid bills of 150 each.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle "Pay Bills" action
            },
            child: const Text('Pay Bills'),
          ),
        ],
      ),
    );
  }
}
