import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/utils/assets.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CheekPassword extends StatelessWidget {
  const CheekPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 248.h),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  Assets.imagesBackground,
                  width: 100.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
                Image.asset(Assets.imagesCheek, width: 46.w, height: 36.h),
              ],
            ),
            SizedBox(height: 35.h),
            Text('Password Changed', style: AppStyles.black26BoldStyle),
            SizedBox(height: 8.h),
            SizedBox(
              width: 226.w,
              child: Text(
                'Your password has been changed successfully.',
                style: AppStyles.black15boldStyle.copyWith(
                  color: Color(0xFF8391A1),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            CustomButton(
              onPressed: () {
                context.pop();
              },
              text: 'Back to Login',
            ),
          ],
        ),
      ),
    );
  }
}
