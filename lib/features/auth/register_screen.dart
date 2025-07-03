import 'package:finance_ui/core/utils/app_colors.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/features/auth/widgets/back_button_widget.dart';
import 'package:finance_ui/features/auth/widgets/custom_or_login.dart';
import 'package:finance_ui/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fromKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordContrroller;
  late TextEditingController userName;
  late TextEditingController configPassword;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordContrroller = TextEditingController();
    userName = TextEditingController();
    configPassword = TextEditingController();
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
                    width: 331.w,
                    child: Text(
                      'Hello! Register to get started',
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Username';
                      }
                      return null;
                    },
                    controller: userName,
                    hintText: 'Username',
                  ),
                  SizedBox(height: 12.h),
                  CustomTextField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Emaill';
                      }
                      return null;
                    },
                    controller: emailController,
                    hintText: 'Email',
                  ),
                  SizedBox(height: 12.h),
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

                  ),
                  SizedBox(height: 12.h),
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
                    controller: configPassword,
                    hintText: 'Confirm password',

                  ),
                
                  SizedBox(height: 30.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {}
                    },
                    text: 'Register',
                  ),
                  SizedBox(height: 35.h),
                  CustomOrLogin(
                    text: 'Or Register with',
                  ),
                  SizedBox(height: 22.h),
                  SocialLoginButton(),
                  SizedBox(height: 54.h),
                  Center(
                    child: ElevatedButton(
                      onPressed: (){
                        context.pop();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: AppStyles.black15boldStyle.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login Now',
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
