import 'package:e_commerce/global_var.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder:(context,index) {
          
        })
    );
  }
}