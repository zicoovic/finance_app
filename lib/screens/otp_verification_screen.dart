import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_elevated_button.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController otpController;

  @override
  void initState() {
    otpController = TextEditingController();
    super.initState();
  }

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
            HightSpace(20),
            Text(
              "Enter the verification code we just sent on your email address.",
              style: AppStyles.grey16w500Style,
            ),
            HightSpace(20),
            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: otpController,
              obscureText: false,
              enableActiveFill: true,
              keyboardType: TextInputType.number,
              textStyle:
                  AppStyles.primaryHeadlineStyle.copyWith(fontSize: 22.sp),
              pinTheme: PinTheme(
                fieldWidth: 70.w,
                fieldHeight: 60.h,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8.r),
                selectedColor: AppColors.primary,
                selectedFillColor: AppColors.whiteColor,
                activeColor: AppColors.primary,
                activeFillColor: AppColors.whiteColor,
                inactiveColor: AppColors.greyColor,
                inactiveFillColor: AppColors.greyColor.withOpacity(0.2),
              ),
              onChanged: (value) {
                setState(() {
                  otpController.text = value;
                });
              },
              onCompleted: (value) {
                setState(() {
                  otpController.text = value;
                });
              },
            ),
            HightSpace(50),
            CustomButton(
              text: "verify",
              backgroundColor: AppColors.primary,
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(AppRoutes.passwordChangedSuccessScreen);
              },
              textColor: AppColors.whiteColor,
            ),
            HightSpace(200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t received code? ",
                  style: AppStyles.primary15w500Style,
                ),
                TextButton(
                  onPressed: () {},
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
