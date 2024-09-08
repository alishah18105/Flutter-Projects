import 'package:clothingstore/ProductDetails.dart';
import 'package:clothingstore/data/data.dart';
import 'package:clothingstore/utilis/app_colors.dart';
import 'package:clothingstore/widgets/CirAv_Hp.dart';
import 'package:clothingstore/widgets/GridView_Hp.dart';
import 'package:clothingstore/widgets/bottom_navigation.dart';
import 'package:clothingstore/widgets/eleBut_Hp.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Homepage extends StatefulWidget {


  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 final _controller = PageController();

  

  @override
  
  Widget build(BuildContext context) {
      final currencyFormat = NumberFormat.currency(locale: 'en_PK', symbol: 'PKR ');

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
                   CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFF051054),
                    child: Badge.count(
                      count: 10,
                      child: Icon(Icons.notifications, color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                  child: PageView
                  (
                    controller: _controller,
                    children: [
                      
                      Image.asset("assets/images/banner1.jpg",fit: BoxFit.cover,),
                      Image.asset("assets/images/banner2.JPG",fit: BoxFit.cover,),
                      Image.asset("assets/images/banner4.JPG", fit: BoxFit.cover,),
                      Image.asset("assets/images/banner3.jpg", fit: BoxFit.cover,),

                    ],

                  ),
                  height: 130,
                  width: 350,
              
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: SmoothPageIndicator(controller: _controller, 
                count: 4,
                effect: SwapEffect(
                  activeDotColor: AppColors.darkBlue,
                  offset: 16,
                  dotColor: Colors.grey,
                
                
                ),
                
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
                children:  [
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
                  children:  [
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
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (100 / 140),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, i) {
                  return  GestureDetector(child: GridViewHP(images:data[i]["image"], product_title: data[i]["pdDetail"], price: currencyFormat.format(data[i]["price"]),),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Productdetails(index: i);
                  })));
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNav(bottomIndex: 0,)
    );
  }
}
