import 'package:flutter/material.dart';

class CounterState {
  int _value = 0;

  void inc() {
    _value++;
  }

  void dec() {
    _value--;
  }

  int get value => _value;
}

class CounterProvider extends StatefulWidget {
  final Widget child;

  const CounterProvider({
    super.key,
    required this.child,
  });

  static _CounterInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<_CounterInherited>();
  }

  @override
  State<CounterProvider> createState() => _CounterProviderState();
}

class _CounterProviderState extends State<CounterProvider> {
  final CounterState state = CounterState();

  void inc() {
    setState(() {
      state.inc();
    });
  }

  void dec() {
    setState(() {
      state.dec();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _CounterInherited(
      state: state,
      inc: inc,
      dec: dec,
      child: widget.child,
    );
  }
}

class _CounterInherited extends InheritedWidget {
  final CounterState state;
  final VoidCallback inc;
  final VoidCallback dec;

  const _CounterInherited({
    required this.state,
    required this.inc,
    required this.dec,
    required super.child,
  });

  @override
  bool updateShouldNotify(_CounterInherited oldWidget) {
    return oldWidget.state.value != state.value;
  }
}
