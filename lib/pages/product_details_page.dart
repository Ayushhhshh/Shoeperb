import 'package:e_commerce/provider/cart_provider.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  final Map<String, Object> product;
  const ProductDetail({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int selectedSize = 0;

void ontap() {
      if (selectedSize != 0){
        Provider.of<CartProvider>(context, listen: false).addProduct(
      {
        'id': widget.product['id'],
        'title': widget.product['title'],
        'price': widget.product['price'],
        'imageUrl': widget.product['imageUrl'],
        'company': widget.product['company'],
        'sizes': selectedSize,
      }
    );
     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Product Added Successfully"),),);
  }
  else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please Select a particular Size!"),),);
  }
}

  @override
  Widget build(BuildContext context) {
    final sizes = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        foregroundColor: Colors.black87,
        leading:IconButton(onPressed: () {Navigator.pop(context, MaterialPageRoute(builder: (context) => const HomePage()),);}, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          "Details",
          style: TextStyle(fontFamily: "Lato", fontWeight: FontWeight.bold,),
        ),
      ),
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Text(
            widget.product['title'] as String,
            style: const TextStyle(
                fontFamily: "Lato", fontSize: 30, fontWeight: FontWeight.bold,),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              height: 250,
              widget.product['imageUrl'] as String),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
              height: 250,
              width: double.infinity,
              decoration: sizes.width < 650 ? BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.brown): BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.brown),
              child:Column(
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  Text(
                    "\$${widget.product['price']}",
                    style: const TextStyle(
                        fontFamily: "Lato",
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height:7,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            (widget.product['sizes'] as List<int>).length,
                        itemBuilder: (context, index) {
                          final size =
                              (widget.product['sizes'] as List<int>)[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSize = size;
                                });
                              },
                              child: Chip(
                                label: Text(size.toString()),
                                labelStyle: TextStyle(
                                  color: selectedSize == size
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                backgroundColor: selectedSize == size
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                        onPressed: ontap,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            fixedSize: const Size(350, 50)),
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text("Add To Cart",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                  )
                ],
                             )),
        ],
      ),
    );
  }
}