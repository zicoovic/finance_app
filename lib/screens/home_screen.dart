import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/widgets/card_grid_widget.dart';
import '../core/widgets/carousel_widget.dart';
import '../core/widgets/custom_navbar.dart';
import '../core/widgets/profile_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomButtonNavBar(),
        appBar: profileAppBar(),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
          child: Column(
            children: [
              CustomCarouselWidget(),
              HightSpace(24),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.sp,
                    crossAxisSpacing: 16.sp,
                  ),
                  children: [
                    CardGridWidget(
                      title: "Send Money",
                      description: "Take acc to acc",
                      icon: Icons.send,
                    ),
                    CardGridWidget(
                      title: "Pay the bill",
                      description: "Lorem ipsum",
                      icon: Icons.wallet,
                    ),
                    CardGridWidget(
                      title: "Request",
                      description: "Lorem ipsum",
                      icon: Icons.send,
                    ),
                    CardGridWidget(
                      title: "Contact",
                      description: "Lorem ipsum",
                      icon: Icons.contact_emergency,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
