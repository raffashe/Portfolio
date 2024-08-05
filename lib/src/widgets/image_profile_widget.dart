import 'package:flutter/material.dart';

import '../utils/img_styles.dart';
import 'buttons_widget.dart';

class RaffasheWidget extends StatelessWidget {
  const RaffasheWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 364,
            height: 499,
            decoration: RaffasheStyles.imageDecoration(),
          ),
          const SizedBox(width: 40),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButtonWidget(
                iconPath: 'assets/icon/insta.svg',
                url: 'https://www.instagram.com/raffashe.jpg',
              ),
              SizedBox(height: 20),
              IconButtonWidget(
                iconPath: 'assets/icon/linkedin.svg',
                url: 'https://www.linkedin.com/in/raffaela-castro-silva/',
              ),
              SizedBox(height: 20),
              IconButtonWidget(
                iconPath: 'assets/icon/github.svg',
                url: 'https://github.com/raffashe',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
