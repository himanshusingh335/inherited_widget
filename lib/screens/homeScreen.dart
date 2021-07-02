import 'package:flutter/material.dart';
import 'package:inherited_widget/models.dart/counter.dart';
import 'package:inherited_widget/screens/secondScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter;

  @override
  Widget build(BuildContext context) {
    _counter = Counter.of(context).counter;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (innercontext) => SecondScreen(),
            ),
          );
        },
        tooltip: 'second screen',
        child: Icon(Icons.add),
      ),
    );
  }
}
