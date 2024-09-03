import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign Up",style: TextStyle(color: Color(0xFF051054), fontSize: 50, fontWeight: FontWeight.w800),),
              Text("Hello! Let's join with us", style: TextStyle(color: Color(0xFF051054),fontWeight: FontWeight.w600),),
              SizedBox(height: 50),
          
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "Email",
                ),
          
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: Icon(Icons.person_2_outlined),
                hintText: "Full Name",
                ),
          
              ),  SizedBox(height: 10,),
        
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: Icon(Icons.key),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: "Password",
                ),
          
              ), SizedBox(height: 10,),
        
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: Icon(Icons.key),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: "Confirm Password",
                ),
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}