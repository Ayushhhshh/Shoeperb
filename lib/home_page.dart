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
      borderSide: BorderSide(color: Colors.grey,),
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50),
      )
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
                      fontSize: 33,
                      color: Colors.white70),
                ),
              ),
               Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.search, color: Colors.white70,),
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
                        setState(() {
                          clicked = filter;
                        });
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        backgroundColor: clicked == filter ? Colors.white70 : Colors.black87,
                        padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                       label:Text(filter),
                       labelStyle:  TextStyle(fontSize: 15,  color: clicked == filter ? Colors.black87 : Colors.white70),
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
                  return  ProductCard(
                    title: product['title'] as String,
                     price: product['price'] as double,
                     image: product['imageUrl'] as String,
                     );
                }, 
                ),
            ),
          ],
        ),
      ),
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.brown,
    color: Colors.black87,
    items:const [
    Icon(Icons.home, color: Colors.white,),
    Icon(Icons.shopping_cart, color: Colors.white,),
    Icon(Icons.settings, color: Colors.white,),
    ]),
   );
  }
}

                                //  18:43:00