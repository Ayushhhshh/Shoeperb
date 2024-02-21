import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
      title: Text("Shoeperb", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
    );
  }
}