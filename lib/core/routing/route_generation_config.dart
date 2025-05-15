import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/screens/cards_screens.dart';
import 'package:finance_app/screens/forget_password_screen.dart';
import 'package:finance_app/screens/home_screen.dart';
import 'package:finance_app/screens/login_screen.dart';
import 'package:finance_app/screens/on_boarding_screen.dart';
import 'package:finance_app/screens/otp_verification_screen.dart';
import 'package:finance_app/screens/password_changed_success_screen.dart';
import 'package:finance_app/screens/register_screen.dart';
import 'package:go_router/go_router.dart';

import '../../screens/main_screen.dart';

class RouteGenerationConfig {
  static GoRouter goRouter =
      GoRouter(initialLocation: AppRoutes.cardsScreen, routes: [
    GoRoute(
      path: AppRoutes.onBoardingScreen,
      name: AppRoutes.onBoardingScreen,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.registerScreen,
      name: AppRoutes.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.forgetPasswordScreen,
      name: AppRoutes.forgetPasswordScreen,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: AppRoutes.otpVerificationScreen,
      name: AppRoutes.otpVerificationScreen,
      builder: (context, state) => const OtpVerificationScreen(),
    ),
    GoRoute(
      path: AppRoutes.passwordChangedSuccessScreen,
      name: AppRoutes.passwordChangedSuccessScreen,
      builder: (context, state) => const PasswordChangedSuccessScreen(),
    ),
    GoRoute(
      path: AppRoutes.mainScreen,
      name: AppRoutes.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: AppRoutes.homeScreen,
      name: AppRoutes.homeScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.cardsScreen,
      name: AppRoutes.cardsScreen,
      builder: (context, state) => const CardsScreens(),
    ),
  ]);
}
