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
      home: MyHomePage(title: 'Flutter Demo Assest and Images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(15.0),
              child: new Image.asset(
                  'images/phongTom.jpg',
                  width: 150.0,
                  height: 200.0,
                  fit: BoxFit.fill
              ),
            ),
            new Container(
              padding: const EdgeInsets.all(15.0),
              child: new Image.asset(
                  'images/Garou.jpg',
                  width: 150.0,
                  height: 200.0,
                  fit: BoxFit.fill
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  @override
  MainPage({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        physics: const AlwaysScrollableScrollPhysics(),
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(29),
      ),
    );
  }
}
List<Widget> _buildGridTiles(numberOfTiles) {
  List<Stack> containers = new List<Stack>.generate(numberOfTiles,
          (int index) {

        final imageName = index < 9 ?
        'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
        return new Stack(
          alignment: const Alignment(0.0, 0.0),
          children: <Widget>[
            new Container(
              child: new Image.asset(
                  imageName,
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.fill
              ),
            ),
            new Container(
              padding: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                  color: new Color.fromARGB(150, 71, 150, 236)
              ),
              child: new Text('${index}', style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
            ),

          ],
        );
        /*
    return new Container(
      child: new Image.asset(
        imageName,
        fit: BoxFit.fill
      ),
    );
    */
      });
  return containers;
}
