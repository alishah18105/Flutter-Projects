import 'package:clothingstore/utilis/app_colors.dart';
import 'package:flutter/material.dart';

class GridViewHP extends StatefulWidget {
  final String? images;
  final String? product_title;
  final String? price;

  const GridViewHP({
    super.key,
    required this.images,
    required this.product_title,
    required this.price,
  });

  @override
  State<GridViewHP> createState() => _GridViewHPState();
}

class _GridViewHPState extends State<GridViewHP> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2, 
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), 
        color: Colors.white, 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), 
            spreadRadius: 2, 
            blurRadius: 5, 
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 140,
            width: double.infinity, 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8), 
              child: Image.asset(
                "assets/images/${widget.images}",
                fit: BoxFit.contain, 
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${widget.product_title}",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold, 
              color: Colors.black87, 
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "${widget.price}",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 12, 
              color: AppColors.darkBlue, 
            ),
          ),
        ],
      ),
    );
  }
}
