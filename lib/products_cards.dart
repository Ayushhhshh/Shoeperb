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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),       
      color: Colors.amber,),
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontFamily: "Lato", fontSize: 20, fontWeight: FontWeight.bold),),
          const SizedBox(height: 5,),
          Text("\$$price", style: const TextStyle(fontFamily: "Lato", fontSize: 16),),
          Center(child: Image.asset(image, height: 180)),   
        ],
      ),
    );
  }
}