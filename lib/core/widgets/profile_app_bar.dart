import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styling/app_assets.dart';
import '../styling/app_colors.dart';
import '../styling/app_styles.dart';

AppBar profileAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    toolbarHeight: 70.h,
    titleSpacing: 0, // علشان نتحكم يدوي في البادينج
    title: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundImage: AssetImage(AppAssets.profile),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back",
                    style: AppStyles.grey12MediumStyle,
                  ),
                  Text(
                    "John Doe",
                    style: AppStyles.darkBlue18w600Style,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            icon: Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.greyColor, width: 1),
              ),
              child: const Icon(
                Icons.notifications,
                color: AppColors.primary,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
