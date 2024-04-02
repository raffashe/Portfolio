import 'package:flutter/material.dart';

class RaffasheStyles {
  static BoxDecoration imageDecoration() {
    return BoxDecoration(
      image: const DecorationImage(
        image: AssetImage("assets/images/img.png"),
        fit: BoxFit.fill,
      ),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(31),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(62, 128, 128, 128),
          blurRadius: 14,
          offset: Offset(0, 4),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color.fromARGB(62, 126, 126, 126),
          blurRadius: 16,
          offset: Offset(0, -7),
          spreadRadius: 0,
        ),
      ],
    );
  }
}
