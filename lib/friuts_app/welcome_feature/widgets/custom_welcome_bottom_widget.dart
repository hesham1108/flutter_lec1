import 'package:flutter/material.dart';
import 'package:flutter_lec1/friuts_app/welcome_feature/widgets/custom_welcome_button.dart';

class CustomWelcomeBottomWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonLabel;
  final Widget otherWidget;
  const CustomWelcomeBottomWidget({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
    required this.otherWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        otherWidget,
        CustomWelcomeButton(
          onPressed: onPressed,
          buttonLabel: buttonLabel,
        ),
      ],
    );
  }
}
