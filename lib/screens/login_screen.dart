import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_form.dart';
import 'package:go_router/go_router.dart';

import '../core/routing/app_routes.dart';
import '../core/styling/app_assets.dart';
import '../core/widgets/custom_elevated_button.dart';
import '../core/widgets/social_media_button.dart';
import '../core/widgets/spacing_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                HightSpace(50),
                CustomTextForm(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  hintText: "Enter your email",
                  borderRadius: 1.r,
                  suffixIcon: Icon(
                    Icons.email,
                    color: AppColors.greyColor,
                  ),
                ),
                HightSpace(30),
                CustomTextForm(
                  controller: passwordController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                  obscureText: true,
                  isPassword: true,
                  hintText: "Enter your password",
                  borderRadius: 1.r,
                ),
                HightSpace(20),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .pushNamed(AppRoutes.forgetPasswordScreen);
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
                HightSpace(30),
                CustomButton(
                  text: "Login",
                  backgroundColor: AppColors.primary,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
                    }
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
                        'Or Login with',
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
                    SocialMediaButton(
                        iconPath: AppAssets.facebook, onTap: () {}),
                    SocialMediaButton(iconPath: AppAssets.google, onTap: () {}),
                    SocialMediaButton(iconPath: AppAssets.apple, onTap: () {}),
                  ],
                ),
                HightSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppStyles.primary15w500Style,
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).replace(AppRoutes.registerScreen);
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
      ),
    );
  }
}
