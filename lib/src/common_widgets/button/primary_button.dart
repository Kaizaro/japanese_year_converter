import 'package:flutter/material.dart';
import 'package:japanese_calendar/src/common_widgets/text/button_text.dart';
import 'package:japanese_calendar/src/theme/colors.dart';

// ignore: constant_identifier_names
const String HARDCODED_buttonTitle = 'Press me';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      this.buttonTitle = HARDCODED_buttonTitle,
      this.isLoading = false,
      this.onPressed})
      : super(key: key);

  final String buttonTitle;
  final bool isLoading;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
              backgroundColor: Color(AppColors.buttonPrimary),
              foregroundColor: Color(AppColors.buttonPrimaryPressed),
              disabledBackgroundColor: Color(AppColors.buttonPrimaryDisabled),
              disabledForegroundColor: Color(AppColors.buttonPrimaryDisabled),
              surfaceTintColor: Color(AppColors.buttonPrimaryPressed),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              alignment: Alignment.center,
            ),
            child: isLoading ? CircularProgressIndicator(color: Color(AppColors.textWhite)) : ButtonText(text: buttonTitle),
          ),
        ),
      ],
    );
  }
}
