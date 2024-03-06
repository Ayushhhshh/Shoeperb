import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Ayush"),
      ),
      drawer: const Drawer(
        width: 200,
        backgroundColor: Colors.brown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/shoe_1.jpeg")),
              )),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
              child: const Center(child: Text("Ayush", style: TextStyle(color: Colors.white),))),
              const SizedBox(width: 10),
         Container(
              height: 100,
              width: 100,
              color: Colors.black,
              child: const Center(child: Text("Ayush", style: TextStyle(color: Colors.white),))),
          ],
        ),
      ),
    );
  }
}