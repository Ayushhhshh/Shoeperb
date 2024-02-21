import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Shoeperb", style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.w700),)),
    );
  }
}