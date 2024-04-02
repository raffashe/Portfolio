import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/utils/text_style.dart';

class PronomeWidget extends StatelessWidget {
  const PronomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '.96',
          textAlign: TextAlign.center,
          style: TextStyles.raffasheBig(context),
        ),
        const SizedBox(width: 10),
        Transform(
          transform: Matrix4.identity()
            ..translate(0.0, 0.0)
            ..rotateZ(1.57),
          child: Container(
            width: 10,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(width: 1),
            ),
          ),
        ),
        Text(
          'ela/dela',
          textAlign: TextAlign.center,
          style: TextStyles.raffasheSmall(context),
        ),
      ],
    );
  }
}
