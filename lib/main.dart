import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Material(
            child: Center(
      child: Container(
        child: Text("Welcome to my 30 Days flutter Boyssss"),
      ),
    )));
  }
}
