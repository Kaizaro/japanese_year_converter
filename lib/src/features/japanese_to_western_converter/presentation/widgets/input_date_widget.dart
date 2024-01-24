import 'package:flutter/material.dart';

class InputDateWidget extends StatelessWidget {
  const InputDateWidget({Key? key}) : super(key: key);

  static String currentYear = DateTime.now().year.toString();

  @override
  Widget build(BuildContext context) {
    return Text(
        'Current date: $currentYear');
  }
}
