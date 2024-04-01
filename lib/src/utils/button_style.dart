import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/utils/colors.dart';

class ButtonStyles {
  static BoxDecoration iconButtonDecoration() {
    return BoxDecoration(
      color: AppColors.greySystem,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(6),
      boxShadow: const [
        BoxShadow(
          color: AppColors.blackSystem,
          blurRadius: 6.30,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
      ],
    );
  }
}
