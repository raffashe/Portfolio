import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_raffashe/src/utils/button_style.dart';
import 'package:portfolio_raffashe/src/utils/text_style.dart';

class IconButtonWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback onPressed;

  const IconButtonWidget({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      height: 450,
      child: Column(
        children: [
          _buildButton(iconPath, title, onPressed),
        ],
      ),
    );
  }

  Widget _buildButton(String iconPath, String title, VoidCallback onPressed) {
    return Positioned(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: ButtonStyles.iconButtonDecoration(),
              child: Center(
                child: SvgPicture.asset(iconPath),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyles.icon(false),
            ),
          ],
        ),
      ),
    );
  }
}
