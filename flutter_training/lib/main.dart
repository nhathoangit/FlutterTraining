import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dialog_message.dart';
import 'onclick_listener.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> implements ConfirmListener {
  bool _showPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        top: true,
        child: Container(
          constraints: BoxConstraints.expand(),
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Container(
                    child: FlutterLogo(),
                    width: 70,
                    height: 70,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black38),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: Text(
                    "Hello, \nWelcome back",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                        labelText: "User Name",
                        labelStyle:
                            TextStyle(color: Colors.black26, fontSize: 15)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        obscureText: !_showPass,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle:
                                TextStyle(color: Colors.black26, fontSize: 15)),
                      ),
                      GestureDetector(
                        onTap: _showPassword,
                        child: Text(
                          "Show",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      _onSignInClick(context);
                    },
                    color: Colors.blue,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "NEW USER SIGN UP",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "FORGOT PASSWORD",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showPassword() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void _onSignInClick(BuildContext context) {
    MessageDialog dialog = new MessageDialog();
    dialog.information(context, "AAA", "bbbb", this);
  }

  @override
  void onConfirmClick() {
    Navigator.of(context).pop();
  }
}
