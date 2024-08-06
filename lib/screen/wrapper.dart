import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/home/home.dart';
import 'package:todo_list/screen/authentication/authentication.dart';
import 'package:todo_list/services/models/userModel.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    if(user == null){
      return Authentication();
    }else{
      return Home();
    }
}
}