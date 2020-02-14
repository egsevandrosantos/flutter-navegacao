import 'package:flutter/material.dart';

class CounterProviderInheritedWidget extends InheritedWidget {
  final int counter;
  final Widget child;

  CounterProviderInheritedWidget(this.counter, {Key key, this.child}) : super(key: key, child: child);

  static CounterProviderInheritedWidget of(BuildContext context) {  
    return (context.dependOnInheritedWidgetOfExactType<CounterProviderInheritedWidget>());
  } 

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}