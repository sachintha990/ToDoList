import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/login_&_register/login.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}