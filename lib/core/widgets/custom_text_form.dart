import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_colors.dart';

class CustomTextForm extends StatefulWidget {
  final String? hintText;
  final IconButton? suffixIconButton;
  final Icon? suffixIcon;
  final double? height;
  final double? width;
  final double? borderRadius;
  final bool isPassword;
  final bool? obscureText;

  const CustomTextForm({
    super.key,
    this.hintText,
    this.suffixIconButton,
    this.suffixIcon,
    this.height,
    this.width,
    this.borderRadius,
    this.isPassword = false,
    this.obscureText,
  });

  @override
  State<CustomTextForm> createState() => _CustomTextFormState();
}

class _CustomTextFormState extends State<CustomTextForm> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 331.w,
      height: widget.height ?? 56.h,
      child: TextField(
        cursorColor: AppColors.primary,
        style: TextStyle(fontSize: 15.sp),
        obscureText:
            widget.isPassword ? _isHidden : (widget.obscureText ?? false),
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
              8.r,
            ),
            borderSide: const BorderSide(
              color: AppColors.darkBlue,
              width: 1,
            ),
          ),
          hintText: widget.hintText ?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: Color(0xFF8391A1),
            fontWeight: FontWeight.w400,
          ),
          focusColor: Colors.black,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: _toggleVisibility,
                  icon: Icon(
                    _isHidden ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.greyColor,
                  ),
                )
              : widget.suffixIcon ?? widget.suffixIconButton,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
        ),
      ),
    );
  }
}
