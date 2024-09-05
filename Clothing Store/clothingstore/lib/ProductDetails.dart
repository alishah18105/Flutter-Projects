import 'package:clothingstore/data/data.dart';
import 'package:clothingstore/widgets/CirAv_Pd.dart';
import 'package:clothingstore/widgets/eleBut_Pd.dart';
import 'package:flutter/material.dart';

class Productdetails extends StatelessWidget {
  final int index;
  const Productdetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset("assets/images/${data[index]["image"]}",fit: BoxFit.fill,),
            ),
            const SizedBox( height: 20,),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Male's Style", style: TextStyle(color: Colors.grey[600],),),
                  const SizedBox(height: 10,),
              
                  Text("${data[index]["pdDetail"]}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF051054)),),
                  const SizedBox(height: 20,),
        
                    const Text("Product Details", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Color(0xFF051054)),),
                    const SizedBox(height: 10,),
        
        
                  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard dummy text",
                  style: TextStyle(color: Colors.grey[600]),),
        
                  const SizedBox(height: 10,),
                  const Text("Select Size", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color(0xFF051054)),),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                    ElebutPd(text: "S"),
                    ElebutPd(text: "M"),
                    ElebutPd(text: "L"),
                    ElebutPd(text: "XL"),],
                  ),
        
                  const SizedBox(height: 10,),
                  const Text("Select Color:", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Color(0xFF051054)),),
                  const SizedBox(height: 5,),

                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CirAvPd(color: Colors.brown),
                      CirAvPd(color: Colors.blue),
                      CirAvPd(color: Colors.black),
                      CirAvPd(color: Colors.purple),

                    ],
                  )

        
                ],
              )
                ,
            ),
          ],
        ),
      ),

    );
  }
}