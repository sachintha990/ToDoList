import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/home/add_task.dart';
import 'package:todo_list/screen/wrapper.dart';
import 'package:todo_list/services/auth.dart';
import 'package:todo_list/services/models/userModel.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      initialData:UserModel(uid: ""),
      value: AuthServides().user,
      child: MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Wrapper(),
        
      
      ),
    );
  }
}
