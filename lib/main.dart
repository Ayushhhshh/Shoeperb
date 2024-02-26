import 'package:e_commerce/global_var.dart';
import 'package:e_commerce/home_page.dart';
import 'package:e_commerce/product_details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoeperb',
      color: Colors.white70,
      theme: ThemeData( 
        scaffoldBackgroundColor: Colors.brown,
        useMaterial3: false,
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700,fontSize: 16)
        )
      ),
      home: const HomePage()
      // ProductDetail(
      //   product: products[0]
      //   ),
    
   );
  }
}