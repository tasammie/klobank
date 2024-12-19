import 'package:flutter/material.dart';

class MoreHomePage extends StatefulWidget {
  const MoreHomePage({super.key});

  @override
  State<MoreHomePage> createState() => _MoreHomePageState();
}

class _MoreHomePageState extends State<MoreHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("More Page"),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Settings"),
            Icon(Icons.settings),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("About"),
            Icon(Icons.info),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Logout"),
            Icon(Icons.exit_to_app),
          ],
        ),
      ],
    );
  }
}
