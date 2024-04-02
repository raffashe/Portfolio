import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonWidget extends StatelessWidget {
  final String iconPath;

  final VoidCallback onPressed;

  const IconButtonWidget({
    super.key,
    required this.iconPath,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 30,
          height: 30,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(),
          child: InkWell(
            onTap: onPressed,
            child: SvgPicture.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
