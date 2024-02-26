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
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Details", style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children:[
          Center(child: Text(product['title'] as String, style: const TextStyle(fontFamily: "Lato", fontSize: 30 , fontWeight: FontWeight.bold),)),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(product['imageUrl'] as String),
          ),
          const Spacer(flex: 2,),
          Container(
            height: 250,
            decoration:
             BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:  Colors.black87),
            ),
        ],
      ),
    );
  }
}

//                                18:17:44