import 'package:flutter/material.dart';
import 'dart:math';

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
          child: Container(
            transform: Matrix4.rotationZ(30 * pi / 180),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(width: 2, color: Colors.amber, style: BorderStyle.solid)
            ),
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            alignment: AlignmentDirectional.bottomCenter,
            child: Text("Hello World", style: TextStyle(fontSize: 30, color: Colors.amberAccent),),
          ),
        ),
      ),
    );
  }
}

