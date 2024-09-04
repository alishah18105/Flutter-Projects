import 'package:clothingstore/HomePage.dart';
import 'package:clothingstore/SignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen
({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text("Welcome",style: TextStyle(color: Color(0xFF051054), fontSize: 50, fontWeight: FontWeight.w800),),
              Text("Back",style: TextStyle(color: Color(0xFF051054), fontSize: 50, fontWeight: FontWeight.w800),),

              Text("Hey! Good to see you again", style: TextStyle(color: Color(0xFF051054),fontWeight: FontWeight.w600),),
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
                }, icon: Icon(_obscureText ? Icons.visibility_off: Icons.visibility)),
                hintText: "Password",
                ),
                  
              ), SizedBox(height: 5,),
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
                  Text("Remember Me"),
                  SizedBox(width: 35,),
                  TextButton(onPressed: (){}, child: Text("Forgot Password?"),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homepage() ),);
                }, child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 15),), style: ElevatedButton.styleFrom(
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
                  Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                }, child: Text("Sign Up") )]
                )

            ],
            
          ),
        ),
      ),
    );
  }
}