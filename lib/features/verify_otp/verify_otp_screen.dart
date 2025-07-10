import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final fromKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;
  @override
  void initState() {
    pinCodeController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: fromKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  BackButtonWidget(),
                  SizedBox(height: 28.h),

                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'OTP Verification',
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Enter the verification code we just sent on your email address.',
                    style: AppStyles.subtitlesStyles,
                  ),
                  SizedBox(height: 32.h),
                  PinCodeTextField(
                    appContext: context,
                    length: 4,
                    controller: pinCodeController,
                    obscureText: false,
                    enableActiveFill: true,
                    keyboardType: TextInputType.number,
                    textStyle: AppStyles.primaryHeadLinesStyle.copyWith(
                      fontSize: 22.sp,
                    ),
                    pinTheme: PinTheme(
                      fieldWidth: 70.w,
                      fieldHeight: 60.h,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.r),
                      selectedColor: AppColors.primaryColor,
                      selectedFillColor: AppColors.whiteColor,
                      activeColor: AppColors.blackColor,
                      activeFillColor: AppColors.primaryColor,
                      inactiveColor: AppColors.greyColor,
                      inactiveFillColor: AppColors.greyColor.withOpacity(.1),
                      borderWidth: 1.w,
                    ),
                    onChanged: (value) {
                      print('pin code: $value');
                    },
                    onCompleted: (value){},
                  ),
                  SizedBox(height: 38.h),
                  CustomButton(
                    text: 'Verify',
                    onPressed: () {

                    },
                  ),
                  SizedBox(height: 357.h,),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        context.go(AppRoutes.registerScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Didn’t received code?',
                          style: AppStyles.black15boldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Resend',
                              style: AppStyles.black15boldStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
