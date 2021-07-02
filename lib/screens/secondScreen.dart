import 'package:flutter/material.dart';
import 'package:inherited_widget/models.dart/counter.dart';
import 'package:inherited_widget/services/increment.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late int _counter;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _counter = Counter.of(context).counter;
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
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
          setState(() {
            _counter = increment(_counter);
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
