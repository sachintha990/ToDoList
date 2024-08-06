import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';

class Onboading1 extends StatefulWidget {
  const Onboading1({super.key});

  @override
  State<Onboading1> createState() => _Onboading1State();
}

class _Onboading1State extends State<Onboading1> {
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
              Image.asset("assets/intro/onboading1.png",),
              Image.asset("assets/intro/NAV.png"),
              const Text(
                "Manage your tasks",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              const Text(
                "You can easily manage all of your daily tasks in DoMe for free",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
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
                ),
              )
            ],
          ),
        ));
  }
}
