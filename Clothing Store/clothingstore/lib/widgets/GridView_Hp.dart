import 'package:flutter/material.dart';

class GridViewHP extends StatelessWidget {
  final String? images;
  const GridViewHP({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/$images",
                          fit: BoxFit.fill,
                        ),
                        width: double.infinity, // Make the image fit the grid cell
                        height: 150, // Adjust height to fit within grid
                      ),
                     /* const Text(
                        "NAVY LINEN WAISTCOAT",
                        style: TextStyle(fontSize: 12),
                      ),
                      const Text(
                        "PKR 10,245",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),*/
                      ],);
  }
}