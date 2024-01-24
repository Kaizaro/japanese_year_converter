import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/common_widgets/text/app_title_text.dart';

class InputDateWidget extends StatelessWidget {
  const InputDateWidget({Key? key}) : super(key: key);

  static String currentYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return AppTitleText(title: 'Current date: $currentYear', size: AppTextSizes.small,);
  }
}
