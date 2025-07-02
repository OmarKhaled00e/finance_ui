import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/features/auth/login_screen.dart';
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
            ],
          );
}
