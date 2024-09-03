import 'package:clothingstore/splashScreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF051054),

      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}