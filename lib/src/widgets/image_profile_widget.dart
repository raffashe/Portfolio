import 'package:flutter/material.dart';

import '../utils/img_styles.dart';

class RaffasheWidget extends StatelessWidget {
  const RaffasheWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 1185,
      top: 272,
      child: Container(
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
          ],
        ),
      ),
    );
  }
}
