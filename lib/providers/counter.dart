import 'package:flutter/material.dart';
class CounterState {
  int _value = 0;

  void inc() => _value++;
  void dec() => _value--;
  int get  value => _value;

  bool diff(CounterState old){
    return old._value != _value;
  }
}
class CounterProvider extends InheritedWidget{
  final CounterState state = CounterState();

  CounterProvider({required Widget child}) : super (child : child);

  static CounterProvider? of (BuildContext context){//ele pode ser nulo se não for encontrado nd
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>(); // a partir desse metodo é possivel em outra parte do codigo acessar alguma instacia de algo que esteja aqui
  }

  @override 
  bool updateShouldNotify(covariant InheritedWidget oldWidget){
    final old = oldWidget as CounterProvider;
    return oldWidget.state.diff(state);
  }

 }