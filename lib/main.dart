import 'dart:developer';

import 'package:flutter/material.dart';

import 'counter_inherted_widget.dart';
import 'counter_state.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterState(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          primaryColor: Theme.of(context).canvasColor,
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}


// This behavior occurs because an InheritedWidget is immutable.
// When its properties change, the entire widget must be recreated 
//to trigger updates to dependent widgets. 
//Simply modifying the state (e.g., counter) without reconstructing 
//the InheritedWidget won't notify dependents.

// Why HomeScreen Doesn't Rebuild
// The updateShouldNotify method is only evaluated when a new instance of 
//the InheritedWidget is created.
// If you modify the counter value without creating a new CounterProvider, 
//the HomeScreen won't know that the value has changed.