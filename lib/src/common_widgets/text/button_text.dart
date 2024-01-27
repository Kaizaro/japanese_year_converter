import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

double defaultFontSize = 16;

class ButtonText extends StatelessWidget {
  final String text;
  final int? color;

  const ButtonText({Key? key, required this.text, this.color})
      : super(key: key);

  Color _getFontColor() {
    if (color != null) {
      return Color(color!);
    } else {
      return Color(AppColors.textWhite);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: _getFontColor(),
        ),
      ),
    );
  }
}
