import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextPage(),
    );
  }

}

// Demo AppBar

// TODO Simple AppBar with Center Title
/*
 AppBar (
    backgroundColor: Colors.blue,
    title: new Text("Title"),
    elevation: 4.0,
    centerTitle: true,
),*/


// TODO Simple ApBar with IconTheme and TextTheme
/*
    AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
              ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )
        ),
      ),
*/

// TODO AppBar with List Of Action Button
/*     AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
              onPressed: (){},
          ),
          new IconButton(icon: new Icon(Icons.menu),
            onPressed: (){},
          ),
        ],
      ),
*/


// TODO AppBar with Title and SubTitle at Center

/*    AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Title",
                style: TextStyle(fontSize: 20.0),
              ),
              new Text(
                "SubTile",
                style: TextStyle(fontSize: 14.0),
              )
            ],
          ),
        ),
      ),*/



// Demo Text
class TextPage extends StatefulWidget {
  @override
  _TextState createState() => _TextState();
}

class _TextState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: new Text("Title"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search),
            onPressed: (){},
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Text(
          "TextStyle with easy parameters",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500, // Medium
            background: Paint()
              ..color = Color(0xffc7e5b4)
              ..style = PaintingStyle.fill,
            letterSpacing: 4,
            wordSpacing: 20, //
          ),
        )
      ),
    );
  }
}

// Demo Row

class RowPage extends StatefulWidget {
  @override
  _RowState createState() => _RowState();
}

class _RowState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }

}