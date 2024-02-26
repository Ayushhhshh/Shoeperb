import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetail extends StatefulWidget {
  final Map<String, Object> product;
  // final String image;
  const ProductDetail({super.key,
   required this.product,
  // required this.image
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int selectedSize = 0;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(widget.product['title'] as String, style: const TextStyle(fontFamily: "Lato", fontSize: 30 , fontWeight: FontWeight.bold),),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(widget.product['imageUrl'] as String),
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
                Text("\$${widget.product['price']}", style: const TextStyle(fontFamily: "Lato", color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (widget.product['sizes'] as List<int>).length,
                    itemBuilder: (context,index) {
                      final size = (widget.product['sizes'] as List<int>)[index];
                      return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                      selectedSize = size;
                    });
                          },
                          child: Chip(
                            label: Text(size.toString()),
                            labelStyle: TextStyle(color: selectedSize == size ? Colors.black : Colors.white,),
                            backgroundColor: selectedSize == size ? Colors.white : Colors.black,),
                        ),
                          
                      );
                    } ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.black87,
                    minimumSize: const Size(double.infinity, 50)),
                  child:const Text("Add To Cart", style: TextStyle(fontSize: 20, color: Colors.white),)),
                )

            ],)
          ),
        ],
      ),
    );
  }
}

//                                18:17:44