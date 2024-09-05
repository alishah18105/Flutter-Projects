import 'package:flutter/material.dart';

class GridViewHP extends StatelessWidget {
  final String? images;
  final String? product_title;
  final String? price;

  const GridViewHP({super.key, required this.images, required  this.product_title, required  this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          
          SizedBox(
            height: 140,
            width: 130,
            child: Image.asset("assets/images/$images",fit: BoxFit.contain),
          ),
          SizedBox(height: 10,),
          Text("$product_title", style: TextStyle(fontSize: 13),),
          Text("PKR: $price", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 10),)
        ],
      ),
    );
  }
}