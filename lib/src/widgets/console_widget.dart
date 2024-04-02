import 'package:flutter/material.dart';
import 'package:portfolio_raffashe/src/utils/console_style.dart';

import '../utils/text_style.dart';

class ConsoleWidget extends StatelessWidget {
  const ConsoleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 61),
      clipBehavior: Clip.antiAlias,
      decoration: ConsoleStyle.consoleBoxDecoration(),
      child: SizedBox(
        width: 778.59,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Graduada em ',
                style: TextStyles.terminal(context),
              ),
              TextSpan(
                text: 'Engenharia da Computação',
                style: TextStyles.terminalBlue(context),
              ),
              TextSpan(
                text: ', desenvolvedora ',
                style: TextStyles.terminal(context),
              ),
              TextSpan(
                text: 'pleno ',
                style: TextStyles.terminalBlue(context),
              ),
              TextSpan(
                text: 'de aplicações com ',
                style: TextStyles.terminal(context),
              ),
              TextSpan(
                text: 'Flutter. ',
                style: TextStyles.terminalBlue(context),
              ),
              TextSpan(
                text:
                    'Minha fascinação pelo motivo por trás das coisas me levou a aprofundar meu estudo na usabilidade do usuário, uma base essencial para minhas criações inovadoras.',
                style: TextStyles.terminal(context),
              ),
              TextSpan(
                text: 'Atualmente, estou cursando ',
                style: TextStyles.terminal(context),
              ),
              TextSpan(
                text: 'pós-graduação em neurorrobótica ',
                style: TextStyles.terminalBlue(context),
              ),
              TextSpan(
                text:
                    'para trazer soluções inovadoras para a área da saúde. Meu trabalho visa integrar tecnologia e neurociência para desenvolver aplicativos com impacto significativo na qualidade de vida e bem-estar das pessoas.',
                style: TextStyles.terminal(context),
              ),
            ],
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
