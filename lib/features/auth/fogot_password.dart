import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  late TextEditingController emailController;
  final fromKey = GlobalKey<FormState>();
  @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Form(
              key: fromKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  BackButtonWidget(),
                  SizedBox(height: 28.h),
                  Text(
                    'Forgot Password?',
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Don\'t worry! It occurs. Please enter the email address linked with your account',
                      style: AppStyles.black16w500Style.copyWith(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Email';
                      }
                      return null;
                    },
                    controller: emailController,
                    hintText: 'Enter Your Email',
                  ),
                  SizedBox(height: 38.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {}
                    },
                    text: 'Send Code ',
                  ),
                  SizedBox(height: 361.h),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        context.go(AppRoutes.loginScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Remember Password?',
                          style: AppStyles.black15boldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
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
