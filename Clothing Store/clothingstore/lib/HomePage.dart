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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CaHp(image: "tshirt.png"),
                  CaHp(image: "trousers.png"),
                  CaHp(image: "dress.png"),
                  CaHp(image: "jacket.png"),
                ],
              ),
              const SizedBox(height: 20),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    EleButtHp(text: "All"),
                    EleButtHp(text: " Popular"),
                    EleButtHp(text: "Newest"),
                    EleButtHp(text: "Men"),
                    EleButtHp(text: "Women"),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  GridViewHP(images: "m1.jpg"),
                   GridViewHP(images: "wm1.jpg"),
                  GridViewHP(images: "wm7.jpg"),
                  GridViewHP(images: "wm3.jpg"),
                  GridViewHP(images: "m4.webp"),
                  GridViewHP(images: "m8.jpg"),
                  GridViewHP(images: "m5.jpg"),
                  GridViewHP(images: "wm4.jpg"),
                  GridViewHP(images: "m7.jpg"),
                  GridViewHP(images: "m2.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
