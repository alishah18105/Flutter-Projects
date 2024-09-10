import 'package:flutter/material.dart';

class ElebutPd extends StatefulWidget {
  final String? text;

  const ElebutPd({super.key, required this.text});

  @override
  State<ElebutPd> createState() => _EleButtHpState();
}

class _EleButtHpState extends State<ElebutPd> {

  bool _isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ElevatedButton(onPressed: (){
        setState(() {
          _isPressed = !_isPressed;
        });
      }, child: Text("${widget.text}", style: TextStyle(color:_isPressed? Colors.white: Colors.black, fontSize: 12),), style: 
      ElevatedButton.styleFrom(
            backgroundColor: _isPressed? Color(0xFF051054) : Colors.transparent,
            shadowColor: Colors.transparent, 
            side: const BorderSide(color:  Color(0xFF051054), width: 1), 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), 
            ),
            minimumSize: const Size(10, 30)
         )
      ),
      const SizedBox(width: 8,),

    ],);
  }
}