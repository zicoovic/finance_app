import 'package:flutter/material.dart';

import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String? text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? sideColor;
  final Color? textColor;
  final double? borderRadius;
  final double? height;
  final double? width;
  final double? fontSize;
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
    this.backgroundColor,
    this.sideColor,
    this.textColor,
    this.borderRadius,
    this.height,
    this.width,
    this.fontSize,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(widget.width ?? 331.w, widget.height ?? 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 8.r),
          side: BorderSide(color: widget.sideColor ?? Colors.transparent),
        ),
        backgroundColor: widget.backgroundColor ?? AppColors.primary,
        textStyle: AppStyles.subTitleStyle,
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.text ?? "",
        style: TextStyle(
          color: widget.textColor,
          fontSize: widget.fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
