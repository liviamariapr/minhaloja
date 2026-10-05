import 'package:flutter/material.dart';

class Badgee3 extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

const Badgee3({
  Key?key,
  required this.child,
  required this.value,
  this.color,
}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 6,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color ?? Theme.of(context).primaryColor,
            ),
            constraints: BoxConstraints(
              minWidth: 15,
              minHeight: 15,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}