import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:japanese_calendar/src/common_widgets/text/heading_text.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

double defaultFontSize = 16;
// double letterSpacing = fontSize * 1.2;
// double lineHeight = fontSize * 1.3;

class BodyText extends StatelessWidget {
  final String text;
  final int? color;
  final AppTextSizes? size;

  const BodyText({Key? key, required this.text, this.color, this.size})
      : super(key: key);

  double _getFontSize() {
    switch (size) {
      case AppTextSizes.small:
        return 14;
      case AppTextSizes.medium:
        return defaultFontSize;
      case AppTextSizes.large:
        return 18;
      default:
        return defaultFontSize;
    }
  }

  Color _getFontColor() {
    if (color != null) {
      return Color(color!);
    } else {
      return Color(AppColors.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: _getFontSize(),
          fontWeight: FontWeight.w400,
          color: _getFontColor(),
        ),
      ),
    );
  }
}
