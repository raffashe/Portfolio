import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_raffashe/src/utils/button_style.dart';
import 'package:portfolio_raffashe/src/utils/text_style.dart';

class MenuButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final double iconSize;
  final VoidCallback onPressed;

  const MenuButtonWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.iconSize = 20.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 40,
            height: 40,
            decoration: ButtonStyles.iconButtonDecoration(),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: iconSize,
                height: iconSize,
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        const SizedBox(
          width: 8,
          height: 4,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Stack(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyles.icon(false),
        ),
      ],
    );
  }
}
