import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

enum AppTextSizes {
  small,
  medium,
  large,
}

double defaultFontSize = 24;
// double letterSpacing = fontSize * 1.2;
// double lineHeight = fontSize * 1.3;

class AppTitleText extends StatelessWidget {
  final String title;
  final int? color;
  final AppTextSizes? size;
  
  const AppTitleText({Key? key, required this.title, this.color, this.size})
      : super(key: key);

  double _getFontSize() {
    switch (size) {
      case AppTextSizes.small:
        return 18;
      case AppTextSizes.medium:
        return 20;
      case AppTextSizes.large:
        return defaultFontSize;
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
      title,
      style: TextStyle(
        fontSize: _getFontSize(),
        // fontSize: fontSize,
        fontWeight: FontWeight.bold,
        // letterSpacing: letterSpacing,
        // height: lineHeight,
        color: _getFontColor(),
      ),
    );
  }
}
