import 'package:flutter/material.dart';
import '../utils/text_style.dart'; // Certifique-se de que o caminho está correto
import '../widgets/stack_widget.dart'; // Importe o StackWidget

class ConsoleWidget extends StatelessWidget {
  const ConsoleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 623,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sou engenheira da computação, atualmente cursando pós-graduação em neuroengenharia. Sou uma profissional entusiasta e criativa na resolução de problemas por meio da programação. \n\nIniciei minha trajetória com Java e Kotlin e, posteriormente, migrei para o desenvolvimento cross-platform utilizando Dart e Flutter, que constituem minha stack atual. Comprometida em me tornar uma profissional completa, continuo estudando para trazer soluções e inovação.',
            textAlign: TextAlign.justify,
            style: TextStyles.terminalGrey(context),
          ),
          const SizedBox(height: 20),
          const StackWidget(),
        ],
      ),
    );
  }
}
