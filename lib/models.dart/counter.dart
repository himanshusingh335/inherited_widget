import 'package:flutter/material.dart';

class Counter extends InheritedWidget {
  const Counter({
    Key? key,
    required this.counter,
    required Widget child,
  }) : super(key: key, child: child);

  final int counter;

  static Counter of(BuildContext context) {
    final Counter? result =
        context.dependOnInheritedWidgetOfExactType<Counter>();
    assert(result != null, 'No counter found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Counter old) => counter != old.counter;
}
