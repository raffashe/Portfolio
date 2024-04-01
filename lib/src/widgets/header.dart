import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'RAFFAELA CASTRO',
            style: TextStyles.header(context),
          ),
          const SizedBox(height: 20),
          Text(
            'Flutter Developer',
            style: TextStyles.subHeader(context),
          ),
        ],
      ),
    );
  }
}
