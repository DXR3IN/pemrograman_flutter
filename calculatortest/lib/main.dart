import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculatorApp());
}

class MyCalculatorApp extends StatefulWidget {
  const MyCalculatorApp({super.key});

  @override
  State<MyCalculatorApp> createState() => _MyCalculatorAppState();
}

class _MyCalculatorAppState extends State<MyCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Calculator"),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 500,
              height: 100,
              color: Colors.blueAccent,
            ),
            Row(
              children: [ElevatedButton(onPressed: () {}, child: Icon(Icons))],
            )
          ],
        ),
      ),
    );
  }
}
