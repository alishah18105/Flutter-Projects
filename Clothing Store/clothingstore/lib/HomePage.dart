import 'package:clothingstore/ProductDetails.dart';
import 'package:clothingstore/data/data.dart';
import 'package:clothingstore/widgets/CirAv_Hp.dart';
import 'package:clothingstore/widgets/GridView_Hp.dart';
import 'package:clothingstore/widgets/eleBut_Hp.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  const Homepage({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Color(0xff051054))
                        ),
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFF051054),
                    child: Icon(Icons.notifications, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF2b47f9),
                  ),
                  height: 130,
                  width: 300,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Category",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CaHp(image: "tshirt.png"),
                  CaHp(image: "trousers.png"),
                  CaHp(image: "dress.png"),
                  CaHp(image: "jacket.png"),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    EleButtHp(text: "All"),
                    EleButtHp(text: "Popular"),
                    EleButtHp(text: "Newest"),
                    EleButtHp(text: "Men"),
                    EleButtHp(text: "Women"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disable GridView scroll
                shrinkWrap: true, // Let GridView take up as much space as needed
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (100 / 140),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, i) {
                  return  GestureDetector(child: GridViewHP(images:data[i]["image"], product_title: data[i]["pdDetail"], price: data[i]["price"],),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Productdetails(index: i);
                  })));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
