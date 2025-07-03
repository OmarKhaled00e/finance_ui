import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrLogin extends StatelessWidget {
  const CustomOrLogin({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 100.w, child: Divider()),
        SizedBox(width: 12.w),
        Text(
          text ?? 'Or Login with',
          style: AppStyles.black15boldStyle.copyWith(color: Color(0xFF6A707C)),
        ),
        SizedBox(width: 12.w),
        SizedBox(width: 100.w, child: Divider()),
      ],
    );
  }
}
