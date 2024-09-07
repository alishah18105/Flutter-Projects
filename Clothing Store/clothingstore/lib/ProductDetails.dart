import 'package:clothingstore/MyCart.dart';
import 'package:clothingstore/data/data.dart';
import 'package:clothingstore/widgets/CirAv_Pd.dart';
import 'package:clothingstore/widgets/eleBut_Pd.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Productdetails extends StatelessWidget {
  final int index;
  const Productdetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
  final currencyFormat = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset("assets/images/${data[index]["image"]}", fit: BoxFit.contain),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Male's Style", style: TextStyle(color: Colors.grey[600])),
                  const SizedBox(height: 10),
                  Text(
                    "${data[index]["pdDetail"]}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF051054)),
                  ),
                  const SizedBox(height: 20),
                  const Text("Product Details", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF051054))),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 10),
                  const Text("Select Size", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF051054))),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      ElebutPd(text: "S"),
                      ElebutPd(text: "M"),
                      ElebutPd(text: "L"),
                      ElebutPd(text: "XL"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("Select Color:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF051054))),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      CirAvPd(color: Colors.brown),
                      CirAvPd(color: Colors.blue),
                      CirAvPd(color: Colors.black),
                      CirAvPd(color: Colors.purple),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Price", style: TextStyle(color: Colors.grey[600])),
                  Text(
                    "${currencyFormat.format(data[index]["price"])}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF051054)),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final existingItemIndex = listTile_data.indexWhere((item) => item["image"] == data[index]["image"]);
                if (existingItemIndex == -1) {
                  listTile_data.add({
                    "image": data[index]["image"],
                    "pdDetail": data[index]["pdDetail"],
                    "price": data[index]["price"],
                    "count": 1,
                  });
                } else {
                  listTile_data[existingItemIndex]["count"]++;
                }
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => MyCart(index: existingItemIndex)));
              },
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, color: Colors.white),
                  SizedBox(width: 5),
                  Text("Add to Cart", style: TextStyle(color: Colors.white)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff051054),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
