import 'package:clothingstore/HomePage.dart';
import 'package:clothingstore/loginScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen
({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  bool _obscureText = true;

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
              SizedBox(height: 40),
          
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
                obscureText: true,
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
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                }, icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility)),
                hintText: "Confirm Password",
                ),
          
              ),
  SizedBox(height: 10,),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start
                ,
                children: [
                  Checkbox(value: isChecked, onChanged: (bool? value){
                    setState(() {
                      isChecked = value ?? false;
                    });
                  }),
                  Text("Agree with"),
                  TextButton(onPressed: (){}, child: Text("Terms & Conditions"),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage() ),);
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 15),), style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical:11),
                  backgroundColor: Color(0xFF051054),
                ),),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Or sign up with")),
    SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.apple, size:40,),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.g_mobiledata, size:40,),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.facebook, size: 40,),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                  Text("Already have an account?"),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                }, child: Text("Sign In") )]
                )

            ],
            
          ),
        ),
      ),
    );
  }
}