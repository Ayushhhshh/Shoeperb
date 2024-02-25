import 'package:e_commerce/global_var.dart';
import 'package:e_commerce/products_cards.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Adidas', 'Nike', 'Bata'];
  late String clicked ;

  @override
  void initState() {
    super.initState();
    clicked = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius:BorderRadius.horizontal(left: Radius.circular(50),)
      );
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Shoes\nCollection",
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 33),
                ),
              ),
               Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: border,
                    focusedBorder: border 
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter  = filters[index];
                  return 
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        clicked = filter;
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        backgroundColor: clicked == filter ? Colors.amber : const Color.fromRGBO(245, 247, 249, 1),
                        padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                       label:Text(filter),
                       labelStyle: const TextStyle(fontSize: 15),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context,index){
                  final product = products[index];
                  return const ProductCard(title: 'Shoe') ;
                }, 
                ),
            ),
          ],
        ),
      ),
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.white,
    color: Colors.black87,
    items:const [
    Icon(Icons.home, color: Colors.white,),
    Icon(Icons.shopping_cart, color: Colors.white,),
    Icon(Icons.settings, color: Colors.white,),
    ]),
   );
  }
}

//                                  17:36:48