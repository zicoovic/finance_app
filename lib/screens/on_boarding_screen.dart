import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../core/routing/app_routes.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/spacing_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              AppAssets.onboarding,
              height: 570.h,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            HightSpace(21),
            CustomButton(
              text: "Login",
              backgroundColor: AppColors.primary,
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
              },
              textColor: AppColors.whiteColor,
            ),
            HightSpace(15),
            CustomButton(
              text: "Register",
              backgroundColor: AppColors.whiteColor,
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
              },
              sideColor: AppColors.primary,
              textColor: AppColors.primary,
            ),
            HightSpace(46),
            Text("Continue as a guest",
                style: AppStyles.darkBlue15w700Style.copyWith(
                  decoration: TextDecoration.underline,
                ))
            // CustomTextButton(
            //   text: "Continue as a guest",
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
