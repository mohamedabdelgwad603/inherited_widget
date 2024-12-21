
import 'package:flutter/material.dart';

class CounterInhertedWidget extends InheritedWidget {
  final int counter;
   
const  CounterInhertedWidget({
    super.key,
    required super.child,
    required this.counter,
  });

  static CounterInhertedWidget of(BuildContext context) =>

      context.dependOnInheritedWidgetOfExactType<CounterInhertedWidget>()!;

  @override
  bool updateShouldNotify(CounterInhertedWidget oldWidget) {
    // Notify dependents only if the counter value changes
    return counter != oldWidget.counter;
  }
}

///How It Works
// Dependency:

// The HomeScreen widget calls CounterProvider.of(context).
// This makes HomeScreen a dependent of the CounterProvider.

// State Update:

// If the counter value in CounterProvider changes, the framework checks updateShouldNotify in CounterProvider.
// If updateShouldNotify returns true, Flutter rebuilds all dependent widgets.

// Rebuild Trigger:
//When the counter value changes, any widget that depends on CounterProvider will automatically rebuild.