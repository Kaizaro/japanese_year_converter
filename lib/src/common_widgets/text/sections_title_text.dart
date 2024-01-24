import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

double fontSize = 20;
double letterSpacing = fontSize * 1.2;
double lineHeight = fontSize * 1.3;

class SectionsTitleText extends StatelessWidget {
  SectionsTitleText({Key? key, required this.title, color}) : super(key: key);

  final String title;
  final Color color = Color(AppColors.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        height: lineHeight,
        color: color,
      ),
    );
  }
}
