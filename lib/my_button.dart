import 'package:flutter/material.dart';

void main() {
  //runApp(MustafaCard())
  //runApp(MustafaCard());
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCard('Selman Kara', Colors.redAccent),
                MyCard('Merve Kara', Colors.teal),
                MyCard('Selim Kara', Colors.blue),
                MyCard('Nil Kara', Colors.redAccent),
                MyCard('Mustafa Kara', Colors.teal),
                MyCard('Cafer Kara', Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  String name;
  Color color;

  MyCard(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: color,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        height: 180,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
