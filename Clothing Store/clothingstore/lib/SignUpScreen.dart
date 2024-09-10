//import 'package:clothingstore/HomePage.dart';
import 'package:clothingstore/loginScreen.dart';
import 'package:clothingstore/utilis/app_colors.dart';
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
  bool _obscureText2 = true;


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Sign Up",style: TextStyle(color: Color(0xFF051054), fontSize: 50, fontWeight: FontWeight.w800),),
              const Text("Hello! Let's join with us", style: TextStyle(color: Color(0xFF051054),fontWeight: FontWeight.w600),),
              const SizedBox(height: 40),
          
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: const Icon(Icons.email_outlined),
                hintText: "Email",
                ),
          
              ),
             const  SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: const  Icon(Icons.person_2_outlined),
                hintText: "Full Name",
                ),
          
              ), const  SizedBox(height: 10,),
        
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                }, icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility)),
                hintText: "Password",
                ),
          
              ),
 const SizedBox(height: 10,),
        
              TextField(
                obscureText: _obscureText2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                prefixIcon: const Icon(Icons.key),
                suffixIcon: IconButton(onPressed: (){
                  setState(() {
                    _obscureText2 = !_obscureText2;
                  });
                }, icon: Icon(_obscureText2 ? Icons.visibility_off : Icons.visibility)),
                hintText: "Confirm Password",
                ),
          
              ),
              const SizedBox(height: 10,),
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
                 const  Text("Agree with"),
                  TextButton(onPressed: (){}, child: const Text("Terms & Conditions"),
                  ),
                ],
              ),
             const  SizedBox(height: 10,),
              Center(
                child: ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: AppColors.darkBlue,
                      content: Text("Sign up Successfully", style: TextStyle(color: AppColors.white),),
                      action: SnackBarAction(label: "undo",textColor:AppColors.white, onPressed: (){}), 
                    )
                  );
                 // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homepage() ),);
                }, child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 15),), style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical:11),
                  backgroundColor: AppColors.darkBlue,
                ),),
              ),
             const  SizedBox(height: 20,),
             const  Center(child: Text("Or sign up with")),
   const  SizedBox(height: 20),
               const  Row(
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
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                 const  Text("Already have an account?"),
                TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                }, child: const Text("Sign In") )]
                )

            ],
            
          ),
        ),
      ),
    );
  }
}