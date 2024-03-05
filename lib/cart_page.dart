import 'package:e_commerce/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(Provider.of<CartProvider>(context).cart);
    final cart = Provider.of<CartProvider>(context).cart;
    return  Scaffold(
      appBar: AppBar(
        elevation: 1,
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
              trailing: IconButton(onPressed: () {
                showDialog(context: context, builder: (context){
                  return const AlertDialog(title: Text("Are you sure", style: TextStyle(fontFamily: "Lato", fontSize: 17),),);
                }); 
              }, icon: const Icon(Icons.delete, color: Colors.white,)),
              title: Text(cartItem['title'].toString(), style: const TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
               subtitle: Text("Size: ${cartItem['sizes'].toString()}"),
            );
          },
          ),
    );
  }
}