import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_assets.dart';
import '../core/widgets/custom_elevated_button.dart';

class PasswordChangedSuccessScreen extends StatelessWidget {
  const PasswordChangedSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                AppAssets.successMarker,
                height: 100.h,
                width: 100.w,
              ),
            ),
            HightSpace(35),
            Text(
              "Password Changed!",
              style: TextStyle(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            HightSpace(8),
            Text(
              "Your password has been changed successfully.",
            ),
            HightSpace(40),
            CustomButton(
              text: "Back to login",
              backgroundColor: AppColors.primary,
              onPressed: () {
                GoRouter.of(context)
                    .pushReplacementNamed(AppRoutes.loginScreen);
              },
              textColor: AppColors.whiteColor,
              fontSize: 14.sp,
            ),
          ],
        ),
      ),
    );
  }
}
