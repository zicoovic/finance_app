import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class CustomTextForm extends StatelessWidget {
  final String? hintText;
  final Icon? suffixIcon;
  final double? height;
  final double? width;
  final double? borderRadius;

  const CustomTextForm({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.height,
    this.width,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              1,
            ),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              1,
            ),
            borderSide: const BorderSide(color: AppColors.darkBlue),
          ),
          hintText: hintText ?? "",
          focusColor: Colors.black,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
