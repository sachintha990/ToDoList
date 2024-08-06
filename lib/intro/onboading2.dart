import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';

class Onboading2 extends StatefulWidget {
  const Onboading2({super.key});

  @override
  State<Onboading2> createState() => _Onboading2State();
}

class _Onboading2State extends State<Onboading2> {
  bool _isHovering =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: MouseRegion(
            onEnter: (event) => setState(() => _isHovering = true),
            onExit: (event) => setState(() => _isHovering = false),
            child: TextButton(
              onPressed: () {
                // Add your skip logic here
                print('Skip button pressed');
              
              },
              child: Text(
                'SKIP',
                style: TextStyle(color:_isHovering ? Colors.grey : Colors.white,),
              ),
            ),
          ),
        ),
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset("assets/intro/onboading2.png"),
              Image.asset("assets/intro/NAV2.png"),
              const Text(
                "Create daily routine",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "In Uptodo  you can create your personalized routine to stay productive",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'BACK',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  CustomButton(height: 48, width: 90, text: "Next",onPressed:(){})
                ],
              )
            ],
          ),
        ));
  }
}
