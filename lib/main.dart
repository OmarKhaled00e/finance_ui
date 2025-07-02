import 'package:finance_ui/core/routing/router_generation_config.dart';
import 'package:finance_ui/core/utils/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const FinanceUi());
}

class FinanceUi extends StatelessWidget {
  const FinanceUi({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'flutter Demo',
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter,
        );
        
      },
    );
  }
}
