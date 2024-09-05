import 'package:flutter/material.dart';
import 'package:sadqahzakat/Screen/Screen1.dart';
import 'package:sadqahzakat/Widgets/drawers_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title:  Text("activePageTitle"),
        // ),
        // drawer: MainDrawer(),
        body: Screen1()
      ),
    );
  }
}
