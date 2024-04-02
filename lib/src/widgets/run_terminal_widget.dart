import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/utils/colors.dart';

import '../utils/text_style.dart';

class RunTerminal extends StatelessWidget {
  const RunTerminal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.blueSystem),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'C:\\Users\\raffa> ',
                    style: TextStyles.terminal(context),
                  ),
                  TextSpan(
                    text: 'raffashe',
                    style: TextStyles.terminalBlue(context),
                  ),
                  TextSpan(
                    text: ' --about',
                    style: TextStyles.terminalGrey(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
