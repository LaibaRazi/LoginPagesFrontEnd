import 'package:flutter/material.dart';
import 'package:flutterprojectudemy/app/Features/login.dart';
import 'package:flutterprojectudemy/app/Features/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (context)=> MyLogin(),
        'register':(context)=> MyRegister()
      },
    ),
  );
}
