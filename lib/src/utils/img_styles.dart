import 'package:flutter/material.dart';

class RaffasheStyles {
  static BoxDecoration imageDecoration() {
    return BoxDecoration(
      image: const DecorationImage(
        image: AssetImage("assets/images/img.png"),
        fit: BoxFit.fill,
      ),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(20),
    );
  }
}
