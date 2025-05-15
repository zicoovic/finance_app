import 'package:finance_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/custom_text_form.dart';
import '../core/widgets/spacing_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            HightSpace(20),
            Text(
              "Don't worry! It occurs. Please enter the email address linked with your account.",
              style: AppStyles.grey16w500Style,
            ),
            HightSpace(50),
            CustomTextForm(
              hintText: "Enter your email",
              borderRadius: 1.r,
              suffixIcon: Icon(
                Icons.email,
                color: AppColors.greyColor,
              ),
            ),
            HightSpace(50),
            CustomButton(
              text: "Send code",
              backgroundColor: AppColors.primary,
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.otpVerificationScreen);
              },
              textColor: AppColors.whiteColor,
            ),
            HightSpace(200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember password?",
                  style: AppStyles.primary15w500Style,
                ),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context)
                        .pushReplacementNamed(AppRoutes.loginScreen);
                  },
                  child: Text(
                    "Login now",
                    style: AppStyles.darkBlue15w700Style,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
