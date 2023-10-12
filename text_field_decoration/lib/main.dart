import 'package:flutter/material.dart';

void main() {
  runApp(MyTextField());
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TextField"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                autocorrect: true,
                decoration: InputDecoration(hintText: "NO BP"),
                autofocus: true,
                enableInteractiveSelection: true,
                // obscureText: true,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(hintText: "Nama"),
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(hintText: "MTK"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(hintText: "B. Ing"),
              ),
              TextField(
                autocorrect: true,
                decoration: InputDecoration(hintText: "Java"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
