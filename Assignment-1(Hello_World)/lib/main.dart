import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
          centerTitle: true, // centers the title in AppBar
        ),
        body: const Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
