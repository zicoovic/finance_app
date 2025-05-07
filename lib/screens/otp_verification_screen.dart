import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
              "OTP Verification",
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
                "Enter the verification code we just sent on your email address."),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              text: "verify",
              backgroundColor: AppColors.primary,
              onPressed: () {},
              textColor: AppColors.whiteColor,
            ),
            SizedBox(
              height: 200.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t received code? ",
                  style: AppStyles.primary15w500Style,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    "Resend",
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
