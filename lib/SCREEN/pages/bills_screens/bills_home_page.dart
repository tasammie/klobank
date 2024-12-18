import 'package:flutter/material.dart';

class BillsHomePage extends StatefulWidget {
  const BillsHomePage({super.key});

  @override
  State<BillsHomePage> createState() => _BillsHomePageState();
}

class _BillsHomePageState extends State<BillsHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bills',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          const Text(
            'You have 3 unpaid bills of 150 each.',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the PayBillsPage
              // Navigator.push(context, MaterialPageRoute(builder: (context) => PayBillsPage()));
            },
            child: Text('Pay Bills'),
          ),
        ],
      ),
    );
  }
}
