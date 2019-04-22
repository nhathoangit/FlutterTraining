import 'package:flutter/material.dart';

class MessageDialog{
  information(BuildContext context, String title, String message){
    return showDialog(
        context: context,
      barrierDismissible: true,
      builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(message)
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed:() => Navigator.pop(context),
                  child: Text("OK")
              )
            ],
          );
      }
    );
  }
}