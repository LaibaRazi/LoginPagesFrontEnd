import 'package:flutter/material.dart';
import 'package:flutterprojectudemy/login.dart';
import 'package:flutterprojectudemy/register.dart';

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
