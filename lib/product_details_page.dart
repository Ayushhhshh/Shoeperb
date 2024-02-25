import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final Map<String, Object> product;
  // final String image;
  const ProductDetail({super.key,
   required this.product,
  // required this.image
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Details", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Center(child: Text(product['title'] as String, style: const TextStyle(fontFamily: "Lato", fontSize: 30 , fontWeight: FontWeight.bold),)),
          // Image.asset(image)
        ],
      ),
    );
  }
}

//                                18:17:44