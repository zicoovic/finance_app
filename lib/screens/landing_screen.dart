import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

import '../core/widgets/custom_elevated_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/landing.jpg"),
            SizedBox(
              height: 20,
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
              height: 10,
            ),
            CustomButton(
              text: "Register",
              backgroundColor: AppColors.whiteColor,
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              sideColor: AppColors.primary,
              textColor: AppColors.primary,
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextButton(
              text: "Continue as a guest",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
