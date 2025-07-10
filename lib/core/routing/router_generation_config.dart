import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/cheek_password.dart';
import 'package:finance_ui/features/auth/fogot_password.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/auth/new_password.dart';
import 'package:finance_ui/features/auth/register_screen.dart';
import 'package:finance_ui/features/on_boarding/on_boarding_screen.dart';
import 'package:finance_ui/features/verify_otp/verify_otp_screen.dart';

import 'package:go_router/go_router.dart';


class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
    routes: [
      GoRoute(
        path: AppRoutes.onBoardingScreen,
        name: 'onboarding',
        builder: (context, state) => OnBoardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: 'login',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: 'register',
        builder: (context, state) => RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgetPassword,
        name: 'forget-password',
        builder: (context, state) => ForgotPassword(),
      ),
      GoRoute(
        path: AppRoutes.newPassword,
        name: 'new-password',
        builder: (context, state) => NewPassword(),
      ),
      GoRoute(
        path: AppRoutes.cheekPassword,
        name: 'cheek-password',
        builder: (context, state) => CheekPassword(),
      ),
      GoRoute(
        path: AppRoutes.verifyOtpScreen,
        name: 'verifyOtpScreen',
        builder: (context, state) => VerifyOtpScreen(),
      ),
    ],
  );
}
