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
      body: 
      // const Center(child: Text("Cart", style: TextStyle(fontSize: 25, fontFamily: "Lato", fontWeight: FontWeight.bold),)),
      const Card(
        shape: RoundedRectangleBorder(
        ),
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Ayush", style:TextStyle(color: Colors.white),),
        ),
      )
    );
  }
}