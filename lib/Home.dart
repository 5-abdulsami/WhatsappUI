import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String id = "home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(child: Text('Home')),
    );
  }
}
