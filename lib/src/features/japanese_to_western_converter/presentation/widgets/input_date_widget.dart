import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/common_widgets/text/body_text.dart';
import 'package:japanese_calendar/src/common_widgets/text/heading_text.dart';

class InputDateWidget extends StatelessWidget {
  const InputDateWidget({Key? key}) : super(key: key);

  static String currentYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeadingText(title: 'Japanese Calendar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BodyText(
              title: 'Current date: $currentYear',
            ),
          ],
        ),
      ),
    );
  }
}
