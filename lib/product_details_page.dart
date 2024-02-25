import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
          },
          child: const Icon(Icons.arrow_back)),
        title: const Text("Details", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
      ),
    );
  }
}
