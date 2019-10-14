import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello,thiskken.',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 50.0,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
