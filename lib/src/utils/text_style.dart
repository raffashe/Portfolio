import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_raffashe/src/utils/colors.dart';

class TextStyles {
  /// Estilização do nome principal
  static TextStyle header(BuildContext context) {
    return GoogleFonts.lexendMega(
      textStyle: Theme.of(context).textTheme.displayLarge,
      fontSize: 64,
      fontWeight: FontWeight.w700,
      color: Colors.black,
      height: 0,
    );
  }

  /// Estilização do subtitulo; nome da especialização

  static TextStyle subHeader(BuildContext context) {
    return GoogleFonts.lexendExa(
      textStyle: Theme.of(context).textTheme.displayMedium,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.blueSystem,
      height: 0,
    );
  }

  /// Estilização do texto do terminal
  static TextStyle terminal(BuildContext context) {
    return GoogleFonts.firaCode(
      textStyle: const TextStyle(
        color: AppColors.blackSystem,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  static TextStyle terminalBlue(BuildContext context) {
    return GoogleFonts.firaCode(
      textStyle: const TextStyle(
        color: AppColors.blueSystem,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  static TextStyle terminalGrey(BuildContext context) {
    return GoogleFonts.firaCode(
      textStyle: const TextStyle(
        color: AppColors.greySystem,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  /// Estilização do titulo dos apps
  static TextStyle icon(bool isSelected) {
    return TextStyle(
      color: isSelected ? AppColors.blueSystem : AppColors.blackSystem,
      fontSize: 12,
      fontFamily: 'Lexend Mega',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }

  /// Estilização do ano de nascimento
  static TextStyle raffasheBig(BuildContext context) {
    return GoogleFonts.lexendMega(
      textStyle: const TextStyle(
        color: AppColors.blueSystem,
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
        color: AppColors.blueSystem,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }
}
