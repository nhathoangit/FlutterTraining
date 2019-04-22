import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Lifecycle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {

  _MyHomePageState() {
    print('Demo State');
  }
  
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    print("From state dispose");
    super.dispose();
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    print("From state didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Lifecycle'),
      ),
      body: RaisedButton(
          child: Text("Go to next"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) {
              return LifeCycleDemo();
            }));
          }),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('State = $state');
  }

}

class LifeCycleDemo extends StatefulWidget {
  LifeCycleDemo() {
    print("Widget constructor");
  }

  @override
  _LifeCycleDemoState createState() => _LifeCycleDemoState();
}

class _LifeCycleDemoState extends State<LifeCycleDemo> {
  int counter = 0;

  _LifeCycleDemoState() {
    print("Widget state constructor");
  }

  @override
  void initState() {
    print("From initState");
    super.initState();
  }

  @override
  void didUpdateWidget(LifeCycleDemo oldWidget) {
    print("From state didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("From state build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget Lifecycle Demo"),
      ),
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Counter: $counter",
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("Click Me"),
                )
              ],
            )),
      ),
    );
  }

  @override
  void dispose() {
    print("From state dispose");
    super.dispose();
  }
}