import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String text;

  LevelButtonWidget({
    Key? key,
    required this.text,
  })   : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(text)),
        super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "colorText": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "colorText": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "colorText": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "colorText": AppColors.levelButtonTextPerito,
    },
  };

  Color get color => config[text]!['color']!;
  Color get borderColor => config[text]!['borderColor']!;
  Color get colorText => config[text]!['colorText']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          text,
          style: GoogleFonts.notoSans(
            color: colorText,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
