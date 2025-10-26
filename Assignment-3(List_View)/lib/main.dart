import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> cricketers = [
    'Virat Kohli',
    'Sachin Tendulkar',
    'MS Dhoni',
    'Rohit Sharma',
    'AB de Villiers',
    'Steve Smith',
    'Kane Williamson',
    'Ben Stokes'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple ListView Assignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Famous Cricketers'),
        ),
        body: ListView.builder(
          itemCount: cricketers.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    cricketers[index],
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
