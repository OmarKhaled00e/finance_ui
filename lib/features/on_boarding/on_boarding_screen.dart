import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/utils/assets.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/primary_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Assets.imagesOnboarding,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 21.h),
          CustomButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            text: 'Login',
            width: 331.w,
            height: 56.h,
          ),
          SizedBox(height: 15.h),
          PrimaryOutlinedButton(
            onPressed: () {},
            width: 331.w,
            height: 56.h,
            text: 'Register',
          ),
          SizedBox(height: 46.h),
          Text(
            'Continue as a guest',
            style: AppStyles.black15boldStyle.copyWith(
              color: Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
