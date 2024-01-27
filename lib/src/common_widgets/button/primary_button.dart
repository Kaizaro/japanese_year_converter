import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.buttonTitle = '', this.isLoading = false, this.onPressed})
      : super(key: key);

  final String buttonTitle;
  final bool isLoading;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(buttonTitle),
    );
  }
}
