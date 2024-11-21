import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Page!'),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            //   },
            //   child: Text('Go to Second Page'),
            // ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
      //   },
      //   child: Icon(Icons.settings),
      // ),
    );
  }
}
