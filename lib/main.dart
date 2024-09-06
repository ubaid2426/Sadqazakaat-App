import 'package:flutter/material.dart';
import 'package:sadqahzakat/Screen/Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Screen1()),
    );
  }
}
