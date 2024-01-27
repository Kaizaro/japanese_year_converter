import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/common_widgets/button/primary_button.dart';
import 'package:japanese_calendar/src/common_widgets/text/body_text.dart';
import 'package:japanese_calendar/src/common_widgets/text/heading_text.dart';

class InputDateWidget extends StatelessWidget {
  const InputDateWidget({Key? key}) : super(key: key);

  static String currentYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingText(text: 'Japanese Calendar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BodyText(
              text: 'Current year: $currentYear',
            ),
            PrimaryButton(
              buttonTitle: 'Try Me!',
              onPressed: () {
                // ignore: avoid_print
                print('Button pressed!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
