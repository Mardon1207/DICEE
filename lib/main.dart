import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> myList = ["Book", "Note", "Pen"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Container(
        child: ListView(
          children: myList.map((e) {
            return Card(
              child:  Text(e),
              );
          }).toList(),
        ),
      ),
    );
  }
}


