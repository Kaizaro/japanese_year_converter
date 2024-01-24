import 'package:flutter/material.dart';

double fontSize = 22;
double letterSpacing = fontSize * 1.2;
double lineHeight = fontSize * 1.3;

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title}) : super(key: key);

  final String title;
  // final Color _color = Color('');

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        letterSpacing: letterSpacing,
        height: lineHeight,
      ),
    );
  }
}
