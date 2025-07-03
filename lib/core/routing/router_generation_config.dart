import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/cheek_password.dart';
import 'package:finance_ui/features/auth/fogot_password.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
import 'package:finance_ui/features/auth/new_password.dart';
import 'package:finance_ui/features/auth/register_screen.dart';
import 'package:finance_ui/features/on_boarding/on_boarding_screen.dart';

import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter =
      GoRouter(
            initialLocation: AppRoutes.onBoardingScreen,
            routes: [
              GoRoute(
                path: AppRoutes.onBoardingScreen,
                name: AppRoutes.onBoardingScreen,
                builder: (context, state) => OnBoardingScreen(),
              ),

              GoRoute(
                path: AppRoutes.loginScreen,
                name: AppRoutes.loginScreen,
                builder: (context, state) => LoginScreen(),
              ),
              GoRoute(
                path: AppRoutes.registerScreen,
                name: AppRoutes.registerScreen,
                builder: (context, state) => RegisterScreen(),
              ),
              GoRoute(
                path: AppRoutes.forgetPassword,
                name: AppRoutes.forgetPassword,
                builder: (context, state) => ForgotPassword(),
              ),
              GoRoute(
                path: AppRoutes.newPassword,
                name: AppRoutes.newPassword,
                builder: (context, state) => NewPassword(),
              ),
              GoRoute(
                path: AppRoutes.cheekPassword,
                name: AppRoutes.cheekPassword,
                builder: (context, state) => CheekPassword(),
              ),
            ],
          );
}
