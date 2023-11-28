import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              color: Colors.blue,
              height: MediaQuery.of(context).size.height / 3,
            ),
            // 1/3 of the screen with one color
            Container(
              color: Colors.red,
              height: 2 * MediaQuery.of(context).size.height / 3,
            ),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3 -
              23, // Adjust the top position as needed
          left: MediaQuery.of(context).size.width / 2 -
              25, // Adjust the left position as needed
          child: Icon(
            Icons.star,
            size: 50,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
