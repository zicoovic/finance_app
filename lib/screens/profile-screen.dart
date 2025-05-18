import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_assets.dart';
import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';
import '../core/widgets/custom_navbar.dart';
import '../core/widgets/spacing_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtonNavBar(),
      appBar: AppBar(
        toolbarHeight: 70.h,
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: Text("My Profile", style: AppStyles.darkBlue18w600Style),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(
                Icons.edit_note,
              ),
              onPressed: () {
                GoRouter.of(context).push("/home-screen");
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HightSpace(24),
            Center(
              child: SizedBox(
                width: 100.w,
                height: 100.h,
                child: CircleAvatar(
                  radius: 24.r,
                  backgroundImage: AssetImage(
                    AppAssets.profile,
                  ),
                ),
              ),
            ),
            HightSpace(16),
            Text(
              "Full Name",
              style: AppStyles.grey12MediumStyle,
            ),
            HightSpace(6),
            Text(
              "Abdulrhman Mohammed",
              style: AppStyles.darkBlue18w600Style,
            ),
            HightSpace(16),
            Text(
              "Email",
              style: AppStyles.grey12MediumStyle,
            ),
            HightSpace(6),
            Text(
              "WtR5M@example.com",
              style: AppStyles.darkBlue18w600Style,
            ),
            HightSpace(16),
            Text(
              "Phone Number",
              style: AppStyles.grey12MediumStyle,
            ),
            HightSpace(6),
            Text(
              "+20123456789",
              style: AppStyles.darkBlue18w600Style,
            ),
            HightSpace(16),
            Text(
              "Address",
              style: AppStyles.grey12MediumStyle,
            ),
            HightSpace(6),
            Text(
              "Doha, Qatar",
              style: AppStyles.darkBlue18w600Style,
            ),
            HightSpace(16),
          ],
        ),
      ),
    );
  }
}
