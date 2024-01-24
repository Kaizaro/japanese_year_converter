import 'package:flutter/material.dart';

class HorizontalContainer extends StatelessWidget {
  const HorizontalContainer({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: padding,
          child: child,
        ),
      ],
    );
  }
}