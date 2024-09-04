import 'package:clothingstore/SignUpScreen.dart';
import 'package:clothingstore/loginScreen.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(backgroundColor: Colors.white,),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 40, bottom: 20, left: 10, right: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    ClipRRect(
                      
                        borderRadius: BorderRadius.circular(50),
                      
                      child: Image.asset("assets/images/men2.jfif",
                      width: 180,
                      height: 365,
                      fit: BoxFit.cover,),
                      
                    ),
                        const SizedBox(width: 12),
                    Column(
                      children: [
                                ClipRRect(
                                
                    borderRadius: BorderRadius.circular(75),
                                
                                child: Image.asset("assets/images/men2.jpg",
                                width: 140,
                                height: 180,
                                fit: BoxFit.cover,),
                                
                              ),
                              const SizedBox(height: 10),
                              ClipRRect(
                                
                    borderRadius: BorderRadius.circular(75),
                                
                                child: Image.asset("assets/images/women.jpg",
                                width: 140,
                                height: 180,
                                fit: BoxFit.cover,),
                                
                              ),      
                      ],
                    )
                    
                  ],
                ),
              ),
              SizedBox(height: 50,),

              RichText(text: TextSpan(
                style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.black,
                ),
                children: [
                  TextSpan(text: "The "),
                  TextSpan(text: "Fashion App ", style: TextStyle(color: Color(0xFF051054), )),
                  TextSpan(text: "That"),
                ]
              )),
              Center(child: Text("Makes You Look Your Best",style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),)),

              SizedBox(height: 30,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen() ),);
              }, child: Text("Let's Get Started",style: TextStyle(color: Colors.white,fontSize: 15),), style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical:15),
                backgroundColor: Color(0xFF051054),
              ),),

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));                  }, 
                    child: Text("Sign in"),
                  ),
                ],
              )
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}