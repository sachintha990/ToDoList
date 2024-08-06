import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/services/models/userModel.dart';

class AuthServides{
   // firebase instance
   final FirebaseAuth _auth = FirebaseAuth.instance;

   //Create a user from firebase user with uid
   UserModel? _userWithFirebaseUserUid(User? user){
    return user != null ? UserModel(uid : user.uid):null;
   }

   //create the stream for checking the auth changes in the user
   Stream<UserModel?> get user {
    return _auth.authStateChanges().map(_userWithFirebaseUserUid);
   }

   // Sign in anonymous
    Future signInAnonymously () async {

      try {
        UserCredential result = await _auth.signInAnonymously();
        User? user = result.user;
        return _userWithFirebaseUserUid(user);
      } catch (err) {
        print(err.toString());
        return null;
      }

      
    }
}



