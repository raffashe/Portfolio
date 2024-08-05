import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de ícones com seus caminhos
    final List<String> iconPaths = [
      'assets/icon/dart.svg',
      'assets/icon/flutter.svg',
      'assets/icon/kotlin.svg',
      'assets/icon/java.svg',
      'assets/icon/python.svg',
      'assets/icon/machine-learning.svg',
      'assets/icon/opencv.svg',
    ];

    return SizedBox(
      height: 46,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: iconPaths.map((iconPath) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SvgPicture.asset(
              iconPath,
              height: 40,
              width: 40,
            ),
          );
        }).toList(),
      ),
    );
  }
}
