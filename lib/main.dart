import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      home: AutoCorrectTest(),
    );
  }
}

class AutoCorrectTest extends StatefulWidget {
  @override
  _AutoCorrectTestState createState() => _AutoCorrectTestState();
}

class _AutoCorrectTestState extends State<AutoCorrectTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField with autocorrect: false'),
      ),
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
              autocorrect: false
          )
      ),
    );
  }
}