import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle primaryHeadlineStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle subTitleStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle black16w500 = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );

  static TextStyle grey12MediumStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle darkBlue15w700Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.darkBlue,
  );

  static TextStyle darkGrey14w600Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.darkGray,
  );
  static TextStyle primary15w500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle grey16w500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
  static TextStyle white14w500Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static TextStyle darkBlue18w600Style = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
}
