import 'package:e_commerce/pages/cart_page.dart';
import 'package:e_commerce/pages/product_list.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int currentPage = 0;

  List<Widget> pages = [const ProductList(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: IndexedStack(
        index: currentPage,
        children: pages),
      bottomNavigationBar: CurvedNavigationBar(
    onTap: (value) {
      setState(() {
        currentPage=value;
      });
    },
    backgroundColor: Colors.brown,
    color: Colors.black87,
    items: const [
    Icon(Icons.home, size: 27,color:  Colors.white),
    Icon(Icons.shopping_cart, size: 27, color: Colors.white,),
    ]),
   );
  }
}