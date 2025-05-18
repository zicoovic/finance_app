import 'package:finance_app/screens/cards_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../styling/app_colors.dart';

class CustomButtonNavBar extends StatefulWidget {
  const CustomButtonNavBar({super.key});

  @override
  State<CustomButtonNavBar> createState() => _CustomButtonNavBarState();
}

class _CustomButtonNavBarState extends State<CustomButtonNavBar> {
  int currentIndex = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // جيب المسار الحالي باستخدام routerDelegate
    final currentRoute =
        GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    setState(() {
      switch (currentRoute) {
        case '/home-screen':
          currentIndex = 0;
          break;
        case '/static-screen':
          currentIndex = 1;
          break;
        case '/add-screen':
          currentIndex = 2;
          break;
        case '/card-screen':
          currentIndex = 3;
          break;
        case '/profile-screen':
          currentIndex = 4;
          break;
        default:
          currentIndex = 0; // لو المسار مش معروف، رجع للرئيسية
      }
    });
  }

  List<Widget> screens = [
    CardsScreens(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      elevation: 1,
      selectedItemColor: AppColors.primary,
      currentIndex: currentIndex,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });

        switch (value) {
          case 0:
            GoRouter.of(context).go('/home-screen');
            break;
          case 1:
            GoRouter.of(context).go('/static-screen');
            break;
          case 2:
            // استخدام push لصفحة الإضافة لو مؤقتة
            GoRouter.of(context).push('/add-screen');
            break;
          case 3:
            GoRouter.of(context).go('/card-screen');
            break;
          case 4:
            GoRouter.of(context).go('/profile-screen');
            break;
        }
      },
      iconSize: 28,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_chart_outlined),
          label: "static",
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 48.sp,
            height: 48.sp,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30.sp,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_card_outlined,
          ),
          label: "My Card",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
