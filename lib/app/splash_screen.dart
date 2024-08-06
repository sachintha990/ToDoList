import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final Widget child;

  const SplashScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You can add your splash screen logic here
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}