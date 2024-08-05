import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_raffashe/src/utils/colors.dart';

class TextStyles {
  /// Estilização do nome principal
  static TextStyle header(BuildContext context) {
    return GoogleFonts.workSans(
      textStyle: Theme.of(context).textTheme.displayLarge,
      fontSize: 52,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      height: 0,
    );
  }

  /// Estilização do subtitulo; nome da especialização

  static TextStyle subHeader(BuildContext context) {
    return GoogleFonts.workSans(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.whiteSystem,
      height: 0,
    );
  }

  /// Estilização do texto do terminal
  static TextStyle terminalGrey(BuildContext context) {
    return GoogleFonts.workSans(
      textStyle: const TextStyle(
        color: AppColors.whiteSystem,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }

  /// Estilização do ano de nascimento
  static TextStyle raffasheBig(BuildContext context) {
    return GoogleFonts.lexendMega(
      textStyle: const TextStyle(
        color: AppColors.whiteSystem,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    );
  }

  /// Estilização do pronome
  static TextStyle raffasheSmall(BuildContext context) {
    return GoogleFonts.lexendMega(
      textStyle: const TextStyle(
        color: AppColors.whiteSystem,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }
}
