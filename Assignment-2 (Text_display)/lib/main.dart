import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextInputDisplay(),
    );
  }
}

class TextInputDisplay extends StatefulWidget {
  @override
  _TextInputDisplayState createState() => _TextInputDisplayState();
}

class _TextInputDisplayState extends State<TextInputDisplay> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Input & Display')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter text here',
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayText = _controller.text;
                });
              },
              child: Text('Show Text'),
            ),
            SizedBox(height: 24),
            Text(
              _displayText,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
