import 'package:e_commerce/global_var.dart';
import 'package:flutter/material.dart';

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
              leading: CircleAvatar(backgroundImage: AssetImage(cartItem['imageUrl'].toString()),
              backgroundColor: const Color.fromARGB(255, 74, 49, 42),
              radius: 25,
              ),
              trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever, color: Colors.white,)),
              title: Text(cartItem['title'].toString(), style: const TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
               subtitle: Text("Size: ${cartItem['sizes'].toString()}"),
            );
          },
          ),
    );
  }
}