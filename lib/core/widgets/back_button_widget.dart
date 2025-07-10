import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 41.h,
        width: 41.w,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Color(0XFFE8ECF4)),
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              try {
                context.pop();
              } catch (e) {
                Navigator.of(context).maybePop();
              }
            },
            child: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
