import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/custom_text_form.dart';

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
            SizedBox(
              height: 20.h,
            ),
            Text(
                "Don't worry! It occurs. Please enter the email address linked with your account."),
            SizedBox(
              height: 50.h,
            ),
            CustomTextForm(
              hintText: "Enter your email",
              borderRadius: 1.r,
              suffixIcon: Icon(
                Icons.email,
                color: AppColors.greyColor,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              text: "Send code",
              backgroundColor: AppColors.primary,
              onPressed: () {},
              textColor: AppColors.whiteColor,
            ),
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Remember password?",
                  style: AppStyles.primary15w500Style,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Login",
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
