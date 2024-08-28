import 'package:e_commerce/provider/cart_provider.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return  ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
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
        home:const HomePage()
         ),
    );
    
  }
}
