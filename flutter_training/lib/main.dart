import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(height: 100, width: 100, color: Colors.amber),
              Container(height: 100, width: 100, color: Colors.green),
              Container(height: 100, width: 100, color: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}

