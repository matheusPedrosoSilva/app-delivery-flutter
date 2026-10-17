import 'package:app_delivery/home_screen.dart';
import 'package:app_delivery/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( 
    MaterialApp( 
      debugShowCheckedModeBanner: false,
      routes: {
        "home":(context)=> HomeScreen(),
        "login":(context)=> LoginScreen()
      },
      initialRoute: 'home',
    )
  );
}
