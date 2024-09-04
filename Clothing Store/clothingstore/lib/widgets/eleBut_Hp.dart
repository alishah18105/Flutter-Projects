import 'package:flutter/material.dart';

class EleButtHp extends StatefulWidget {
  final String? text;

  const EleButtHp({super.key, required this.text});

  @override
  State<EleButtHp> createState() => _EleButtHpState();
}

class _EleButtHpState extends State<EleButtHp> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(onPressed: (){
        setState(() {
          
        });
      }, child: Text("${widget.text}", style: TextStyle(color: Colors.black),), style: 
      ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent, // Remove shadow
            side: BorderSide(color: Color(0xFF051054), width: 2), // Border color and width
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Rounded corners
            ),
          ),
      ),
      const SizedBox(width: 8,),

    ],);
  }
}