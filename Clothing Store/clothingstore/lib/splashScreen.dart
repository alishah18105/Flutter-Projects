
import 'dart:async';

import 'package:clothingstore/welcomeScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    super.initState();
Timer(Duration(seconds: 3),(){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcomescreen()));
});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051054),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: Image.asset("assets/images/logo.png"),
          width: 300,
          height: 300,
        ),
      ),
    )
     ;
  }
}