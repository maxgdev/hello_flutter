import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Hello World'),
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
            MyBox('Clinton', Colors.blueAccent),
            SizedBox(height: 8.0),
            MyBox('Obama', Colors.redAccent),
            SizedBox(height: 8.0),
            MyBox('Trump', Colors.yellowAccent),
            SizedBox(height: 8.0),
            MyBox('Biden', Colors.greenAccent)
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final String name;
  final boxColor;
  const MyBox(this.name, this.boxColor);
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: boxColor),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Text(name),
      ),
    );
  }
}
