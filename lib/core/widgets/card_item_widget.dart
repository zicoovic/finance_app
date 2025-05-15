// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';

import '../styling/app_styles.dart';

class CardItemWidget extends StatelessWidget {
  final String? cardName;
  final String? cardType;
  final String? cardNumber;
  final String? cardBalance;
  final String? cardDate;
  final double? width;
  final double? height;
  const CardItemWidget({
    super.key,
    this.cardName,
    this.cardNumber,
    this.cardDate,
    this.cardBalance,
    this.width,
    this.height,
    this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width ?? 207.w,
          height: height ?? 263.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 120.w,
            height: 130.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 120.w,
            height: 130.w,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          left: 24.w,
          right: 24.w,
          top: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardName ?? "",
                    style: AppStyles.black16w500.copyWith(color: Colors.white),
                  ),
                  Text(
                    cardType ?? "",
                    style: AppStyles.black16w500.copyWith(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              HightSpace(18),
              Text(
                "Balance",
                style: AppStyles.black16w500.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              HightSpace(10),
              Text(
                cardBalance ?? "",
                style: AppStyles.black16w500.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 26.h,
          right: 24.w,
          child: Text(
            cardDate ?? "",
            style: AppStyles.black16w500
                .copyWith(fontSize: 12.sp, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 26.h,
          left: 24.w,
          child: Text(
            cardNumber ?? "",
            style: AppStyles.black16w500
                .copyWith(fontSize: 12.sp, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
