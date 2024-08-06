import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';
import 'package:todo_list/constants/custom_back.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomBack(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Column(
          
          children: [
            Text("Welcome to UpTodo",
            style: TextStyle(fontSize: 35, color: Colors.white,fontWeight:FontWeight.bold ),),

            SizedBox(height: 30,),

            Text("Please login to your account or create new account to continue",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey)),
          ],
        ),

        SizedBox(height: 150,),

        Column(
          children: [
            CustomButton(height: 48, width: 327, text: "LOGIN",onPressed:(){}),
            SizedBox(height: 20,),
            OutlinedButton(
              style:OutlinedButton.styleFrom(
                backgroundColor:Colors.transparent,
                side: BorderSide(color: secondaryColor, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                minimumSize:Size(327, 48),
              ),
            
            onPressed: (){}, 
            child: Text("CREATE ACCOUNT",
            style: TextStyle(fontSize: 16, color:Colors.white),)),
          ]
        )
      ],),
    );
  }
}
