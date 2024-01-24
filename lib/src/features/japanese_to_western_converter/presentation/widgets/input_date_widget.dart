import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/common_widgets/text/app_title_text.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

class InputDateWidget extends StatelessWidget {
  const InputDateWidget({Key? key}) : super(key: key);

  static String currentYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitleText(title: 'Japanese Calendar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppTitleText(title: 'Current date: $currentYear', color: AppColors.background, size: AppTextSizes.small,)
            // const Text(
            //   'Current year:',
            // ),
            // Text(
            //   currentYear,
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
    );
    // return AppTitleText(title: 'Current date: $currentYear');
  }
}
