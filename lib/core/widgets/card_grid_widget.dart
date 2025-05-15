import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardGridWidget extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? description;

  const CardGridWidget({
    super.key,
    this.icon,
    this.title,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Icon(
                icon!,
                size: 20.sp,
                color: AppColors.primary,
              ),
            ),
            const HightSpace(12),
            Text(
              title ?? "",
              style: AppStyles.black16w500,
            ),
            const HightSpace(8),
            Text(
              description ?? "",
              style: AppStyles.grey12MediumStyle,
            ),
          ],
        ),
      ),
    );
  }
}
