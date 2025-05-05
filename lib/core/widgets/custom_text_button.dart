import 'package:flutter/material.dart';

import '../styling/app_styles.dart';

class CustomTextButton extends StatefulWidget {
  final String? text;
  final void Function()? onPressed;
  final double? fontSize;
  final Color? textColor;

  const CustomTextButton({
    super.key,
    this.text,
    this.onPressed,
    this.fontSize,
    this.textColor,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(widget.text ?? "", style: AppStyles.subTitleStyle),
    );
  }
}
