import 'package:e_commerce/global_var.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.brown,
        title:
        const Text("Cart", style: TextStyle(color: Colors.black),),
        ),
        body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context,index){
            final cartItem = cart[index];
            return  ListTile(
              title: Text(cartItem['title'].toString(), style: const TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
               subtitle: Text("Size: ${cartItem['sizes'].toString()}"),
            );
          },
          ),
    );
  }
}