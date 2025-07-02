import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  const PrimaryOutlinedButton({
    super.key,
    this.text,
    this.bordersColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor, this.onPressed, this.fontSize,
  });
  final String? text;
  final Color? bordersColor;
  final Color? textColor;
  final double? width;
  final double? fontSize;
  final double? height;
  final double? bordersRadius;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        // backgroundColor: color ?? AppColors.primaryColor,
        side: BorderSide(
          color: bordersColor ?? AppColors.primaryColor,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      onPressed: onPressed,
      child: Text(
        text ?? ' ',
        style: TextStyle(color: textColor ?? AppColors.primaryColor,
        fontWeight: FontWeight.bold,
        fontSize: fontSize ?? 16.sp
        ),
      ),
    );
  }
}