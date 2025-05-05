import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_form.dart';

import '../core/widgets/custom_elevated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome back! Again!",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
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
                height: 30.h,
              ),
              CustomTextForm(
                hintText: "Enter your password",
                borderRadius: 1.r,
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forget-password');
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.darkGray,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                text: "Login",
                backgroundColor: AppColors.primary,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                textColor: AppColors.whiteColor,
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: Text(
                  'Or Login with',
                  style: AppStyles.darkGrey14w600Style,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    'assets/svg/facebook_ic.svg',
                    width: 30,
                    height: 30,
                  ),
                  SvgPicture.asset(
                    'assets/svg/google_ic.svg',
                    width: 30,
                    height: 30,
                  ),
                  SvgPicture.asset(
                    'assets/svg/cib_apple.svg',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: AppStyles.primary15w500Style,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Register Now",
                      style: AppStyles.darkBlue15w700Style,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
