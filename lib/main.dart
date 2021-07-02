import 'package:flutter/material.dart';

import 'package:inherited_widget/screens/homeScreen.dart';
import 'package:inherited_widget/models.dart/counter.dart';

void main() {
  runApp(
    Counter(
      counter: 2,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
