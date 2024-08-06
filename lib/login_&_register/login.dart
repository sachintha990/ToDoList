import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_Button.dart';
import 'package:todo_list/constants/custom_back.dart';
import 'package:todo_list/login_&_register/register.dart';
import 'package:todo_list/services/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final AuthServides _auth = AuthServides();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: const CustomBack(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Username",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Password",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                    const SizedBox(
                    height: 5,
                  ),
                TextField(
                  controller: _passwordController,
                  obscureText: true, // Obscure the text to display dots
                  style: TextStyle(
                    color: Colors.white, // Set text color to white
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password', // Label text color
                    hintText: 'Enter your Password',
                    hintStyle:
                        TextStyle(color: Colors.white70), // Hint text color
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
            CustomButton(height: 48, width: 327, text: "Login",onPressed:(){}),
            CustomButton(height: 48, width: 327, text: "Login Anonymously",onPressed:() async {
              dynamic result = await _auth.signInAnonymously();
              if(result == null){
                print("Error in Login anonymuosly");
              }else{
                print("Log in anonymously");
                print(result.uid);
                }

            }),
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
            Column(
              children: [
                OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(327, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                    onPressed: () {},
                    icon: Image.asset("assets/login_&_register/google_logo.png",height: 20, width: 20,),
                    label: Text("Login with Google")),

                SizedBox(height: 20,),

                OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        minimumSize: Size(327, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                    onPressed: () {},
                    icon: Image.asset("assets/login_&_register/apple_logo.png",
                    height: 20, width: 20,),
                    label: Text("Login with Appel")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                  child: const Text(
                    "Register",
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
    );
  }
}
