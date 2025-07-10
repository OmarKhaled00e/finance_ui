import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_login.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final fromKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordContrroller;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordContrroller = TextEditingController();
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
                      'Welcome back! Again!',
                      style: AppStyles.primaryHeadLinesStyle,
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
                  SizedBox(height: 15.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Password';
                      }
                      if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                    controller: passwordContrroller,
                    hintText: 'Enter Your Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        context.go(AppRoutes.forgetPassword);
                      },
                      child: Text(
                        'Forgot Password?',
                        style: AppStyles.black15boldStyle.copyWith(
                          color: Color(0xFF6A707C),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {
                        context.go(AppRoutes.verifyOtpScreen);
                      }
                    },
                    text: 'Login',
                  ),
                  SizedBox(height: 35.h),
                  CustomOrLogin(),
                  SizedBox(height: 30.h),
                  SocialLoginButton(),
                  SizedBox(height: 155.h),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        context.go(AppRoutes.registerScreen);
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don’t have an account?',
                          style: AppStyles.black15boldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register Now',
                              style: AppStyles.black15boldStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 45.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
