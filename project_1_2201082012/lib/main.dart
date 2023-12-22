import 'package:flutter/material.dart';
import 'package:project_1_2201082012/detail_screen.dart';
import 'package:project_1_2201082012/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wisata Payakumbuh",
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
