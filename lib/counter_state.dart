import 'package:flutter/material.dart';

import 'counter_inherted_widget.dart';


class CounterState extends StatefulWidget {
  final Widget child;

  const CounterState({super.key, required this.child});

  @override
  State<CounterState> createState() => CounterStateState();
}

class CounterStateState extends State<CounterState> {
  int counter = 0;
  increment(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  CounterInhertedWidget(
      counter: counter,
      child:  widget.child,
    );
  }
}
