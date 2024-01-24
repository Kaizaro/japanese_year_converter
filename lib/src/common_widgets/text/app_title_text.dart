import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

enum AppTextSizes {
  small,
  medium,
  large,
}

double fontSize = 24;
// double letterSpacing = fontSize * 1.2;
// double lineHeight = fontSize * 1.3;

class AppTitleText extends StatelessWidget {
  AppTitleText({Key? key, required this.title, color, size}) : super(key: key);

  final String title;
  final Color color = Color(AppColors.text);
  final AppTextSizes size = AppTextSizes.large;

  double _getFontSize() {
    switch (size) {
      case AppTextSizes.small:
        return 18;
      case AppTextSizes.medium:
        return 20;
      case AppTextSizes.large:
        return 24;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: _getFontSize(),
        fontWeight: FontWeight.bold,
        // letterSpacing: letterSpacing,
        // height: lineHeight,
        color: color,
      ),
    );
  }
}
