import 'package:flutter/material.dart';

class ConsoleStyle {
  static BoxDecoration consoleBoxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.1),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(29, 255, 255, 255),
          blurRadius: 15.40,
          offset: Offset(0, 9),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color.fromARGB(23, 54, 54, 54),
          blurRadius: 1.60,
          offset: Offset(-1, 0),
          spreadRadius: 1,
        )
      ],
    );
  }
}
