import 'dart:io';

import 'package:flutter/material.dart';


//It's important to separate logic/state operations from the presentation of this informations
//This class is responsible for all the logic processing of the counter and store informations
class CounterState{
  int _value=0;

  void inc() => _value++;
  void dec() => _value--;
  int get value => _value;

  bool diff(CounterState old){
    return old._value != _value;
  }
}

// The InheritedWidget allows to pass informations for other widgets in the tree
class CounterProvider extends InheritedWidget {
  final CounterState state = CounterState();

  CounterProvider({required Widget child }) : super(child: child);

//Method for returning the instance of the class
static CounterProvider? of(BuildContext context){
  return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
}
//Always the state is different, then the method goes notify 
  @override 
  bool updateShouldNotify(covariant CounterProvider oldWidget){
    return oldWidget.state.diff(state);
}

}