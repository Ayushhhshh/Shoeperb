import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  const ProductCard(
    {super.key, 
    required this.title,
    required this.price,
    required this.image}

    );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(216, 240, 253, 1),
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontFamily: "Lato", fontSize: 20, fontWeight: FontWeight.bold),),
          const SizedBox(height: 5,),
          Text("\$$price", style: const TextStyle(fontFamily: "Lato", fontSize: 15),),
          Image.asset(image, height: 375,)   
        ],
      ),
    );
  }
}