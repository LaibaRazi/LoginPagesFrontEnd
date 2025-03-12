import 'package:flutter/material.dart';
import 'package:flutterprojectudemy/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {'login' : (context)=> MyLogin()},
    ),
  );
}
