import 'package:finance_app/core/widgets/card_item_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../core/styling/app_colors.dart';
import '../core/styling/app_styles.dart';

class CardsScreens extends StatelessWidget {
  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70.h,
            centerTitle: true,
            title: Text("All Cards", style: AppStyles.darkBlue18w600Style),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: AppColors.blackColor,
                  ),
                  onPressed: () {
                    GoRouter.of(context).push("/home-screen");
                  },
                ),
              )
            ],
          ),
          body: Column(
            children: [
              HightSpace(24),
              Center(
                child: CardItemWidget(
                  width: 327.w,
                  height: 227.h,
                  cardName: "X-Card",
                  cardType: "Visa",
                  cardBalance: "23400 EG",
                  cardNumber: "**** **** 1234",
                  cardDate: "12/22",
                ),
              ),
              HightSpace(24),
              Center(
                child: CardItemWidget(
                  width: 327.w,
                  height: 227.h,
                  cardName: "M-Card",
                  cardType: "Visa",
                  cardBalance: "1200 EG",
                  cardNumber: "**** **** 2234",
                  cardDate: "12/22",
                ),
              ),
            ],
          )),
    );
  }
}
