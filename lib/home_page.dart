import 'package:e_commerce/product_list.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int currenPage = 0;

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: const ProductList(),
      bottomNavigationBar: CurvedNavigationBar(
    onTap: (value) {
      setState(() {
        currenPage=value;
      });
    },
    backgroundColor: Colors.brown,
    color: Colors.black87,
    items: [
    GestureDetector(
      onTap: () {},
      child:  const Icon(Icons.home, color: Colors.white,)),
    GestureDetector(
      onTap: () {},
      child:  const Icon(Icons.shopping_cart, color: Colors.white,)),
    ]),
   );
  }
}

                                  //  19:00:00