import 'package:flutter/material.dart';
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
        body: const Center(child: Text("Cart", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold, fontSize: 25),)),
    );
  }
}