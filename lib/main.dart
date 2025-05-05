import 'package:finance_app/core/styling/theme_data.dart';
import 'package:finance_app/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'screens/forget_password_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => LandingScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/forget-password': (context) => ForgetPasswordScreen(),
        },
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        home: child,
      ),
      child: LandingScreen(),
    );
  }
}
