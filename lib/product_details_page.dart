import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            width: 1000,
            decoration:
             BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color:  Colors.black87),
              child : Column(children: [
                const SizedBox(height: 36,),
                Text("\$${product['price']}", style: const TextStyle(fontFamily: "Lato", color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (product['sizes'] as List<int>).length,
                    itemBuilder: (context,index) {
                      final size = (product['sizes'] as List<int>)[index];
                      return Chip(
                        label: Text(size.toString()));
                    } ),
                ),
                ElevatedButton(
                onPressed: (){}, 
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                child:const Text("Add To Cart"))

            ],)
          ),
        ],
      ),
    );
  }
}

//                                18:17:44