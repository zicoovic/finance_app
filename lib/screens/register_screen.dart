import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/custom_text_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello! Register to get started",
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
                hintText: "username",
                borderRadius: 1.r,
                suffixIcon: Icon(
                  Icons.person_2_outlined,
                  color: AppColors.greyColor,
                ),
              ),
              CustomTextForm(
                hintText: "Enter your email",
                borderRadius: 1.r,
                suffixIcon: Icon(
                  Icons.email,
                  color: AppColors.greyColor,
                ),
              ),
              CustomTextForm(
                hintText: "password",
                borderRadius: 1.r,
                suffixIcon: Icon(
                  Icons.visibility_off_rounded,
                  color: AppColors.greyColor,
                ),
              ),
              CustomTextForm(
                hintText: "confirm password",
                borderRadius: 1.r,
                suffixIcon: Icon(
                  Icons.visibility_off_rounded,
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                text: "Register",
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
                  'Or Register with',
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: AppStyles.primary15w500Style,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Login',
                        style: AppStyles.darkBlue15w700Style,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
