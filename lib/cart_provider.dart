import 'package:e_commerce/global_var.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List<Map<String, dynamic>> cart = [];
  
  void addProduct(Map<String, dynamic> product){
    cart.add(product);
  }

  void removeProduct(Map<String,dynamic> product){
    cart.remove(product);
  }
}