import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';


class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: primaryColor,
       body: Center(child: Image.asset("assets/intro.png")),
    );
  }
}