import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';
import 'package:todo_list/constants/custom_back.dart';
import 'package:todo_list/login_&_register/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: CustomBack(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _usernameController,
                    style: TextStyle(
                      color: Colors.white, // Set the text color to white
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Enter your Username',
                      hintText: 'Enter your Username',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Password",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true, // Obscure the text to display dots
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password', // Label text color
                      hintText: 'Enter your Password',
                      hintStyle:
                          TextStyle(color: Colors.white70), // Hint text color
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Confirm Password",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: true, // Obscure the text to display dots
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                    decoration: InputDecoration(
                      labelText: 'Confirm Password', // Label text color
                      hintText: 'Enter your Password',
                      hintStyle:
                          TextStyle(color: Colors.white70), // Hint text color
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomButton(height: 48, width: 327, text: "Register",onPressed:(){}),
              SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 20,
                      thickness: 2,
                      //indent: 20,
                      //endIndent: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(327, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/login_&_register/google_logo.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text("Login with Google")),
                  SizedBox(
                    height: 20,
                  ),
                  OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(327, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/login_&_register/apple_logo.png",
                        height: 20,
                        width: 20,
                      ),
                      label: Text("Login with Appel")),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
