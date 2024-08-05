import 'package:flutter/material.dart';
import '../utils/text_style.dart';

class Header extends StatelessWidget {
  final TextStyle style;

  const Header({super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Raffaela de Castro',
            style: style,
          ),
          const SizedBox(height: 15),
          Text(
            'Computer Engineer | Flutter Developer',
            style: TextStyles.subHeader(context),
          ),
        ],
      ),
    );
  }
}
