import 'package:finance_app/core/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/custom_text_form.dart';
import '../core/widgets/spacing_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              HightSpace(50),
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
                obscureText: true,
                isPassword: true,
                hintText: "password",
                borderRadius: 1.r,
                suffixIconButton: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.visibility_off_rounded,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
              CustomTextForm(
                obscureText: true,
                isPassword: true,
                hintText: "confirm password",
                borderRadius: 1.r,
                suffixIconButton: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility_off_rounded,
                    color: AppColors.greyColor,
                  ),
                ),
              ),
              HightSpace(30),
              CustomButton(
                text: "Register",
                backgroundColor: AppColors.primary,
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                },
                textColor: AppColors.whiteColor,
              ),
              HightSpace(50),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.greyColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      'Or register with',
                      style: AppStyles.darkGrey14w600Style,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
              HightSpace(30),
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
              HightSpace(50),
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
                        GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
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
