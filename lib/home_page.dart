import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Shoes\nCollection", style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 33),),
              ),
              Expanded(child: 
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),borderRadius: BorderRadius.horizontal(left: Radius.circular(50)))
                ),
              ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}