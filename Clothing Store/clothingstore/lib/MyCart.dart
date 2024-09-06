import 'package:clothingstore/data/data.dart';
import 'package:clothingstore/utilis/app_colors.dart';
import 'package:clothingstore/widgets/eleBut_Mc.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
    final int index;

  const MyCart({super.key, required this.index});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
 void _increaseCount() {
    setState(() {
      count++; // Increase the count
    });
  }

  void _decreaseCount() {
    if (count > 1) {
      setState(() {
        count--; // Decrease the count
      });
    }
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: ListView.builder(
        itemCount: listTile_data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      height: 100,
                      width: 60,
                      child: Image.asset(
                        "assets/images/${listTile_data[index]["image"]}",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  title: Text(
                    "${listTile_data[index]["pdDetail"]}",
                    style: TextStyle(color: AppColors.darkBlue),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size: XL",
                        style: TextStyle(color: AppColors.grey, fontSize: 10),
                      ),
                      Text(
                        "${listTile_data[index]["price"]}",
                        style: TextStyle(
                          color: AppColors.darkBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  trailing: SizedBox(
                    width: 120, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        EleBut_Mc(
                          text: "-",
                          tcolor: AppColors.black,
                          bcolor: AppColors.lightgrey,
                          onPressed: _decreaseCount,
                        ),
                        Text("$count"),
                        EleBut_Mc(
                          text: "+",
                          tcolor: AppColors.white,
                          bcolor: AppColors.darkBlue,
                          onPressed: _increaseCount,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
