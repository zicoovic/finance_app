import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.whiteColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadlineStyle,
      titleMedium: AppStyles.subTitleStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
      disabledColor: AppColors.secondary,
    ),
  );
}
