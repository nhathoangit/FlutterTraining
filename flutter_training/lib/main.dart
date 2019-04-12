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
        appBar: AppBar(
          title: Text("Demo Stack"),
        ),
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(width: 400, height: 400, color: Colors.amber),
              Container(width: 300, height: 300, color: Colors.black26),
              Container(width: 200, height: 200, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}

