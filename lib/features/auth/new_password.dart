import 'package:finance_ui/core/routing/app_routes.dart';
import 'package:finance_ui/core/utils/app_styles.dart';
import 'package:finance_ui/core/widgets/custom_button.dart';
import 'package:finance_ui/core/widgets/custom_text_field.dart';
import 'package:finance_ui/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  late TextEditingController passwordContrroller;
  late TextEditingController configPassword;
  final fromKey = GlobalKey<FormState>();

  @override
  void initState() {
    passwordContrroller = TextEditingController();
    configPassword = TextEditingController();
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),
                  BackButtonWidget(),
                  SizedBox(height: 28.h),
                  Text(
                    'Create new password',
                    style: AppStyles.primaryHeadLinesStyle,
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 331.w,
                    child: Text(
                      'Your new password must be unique from those previously used.',
                      style: AppStyles.black16w500Style.copyWith(
                        color: Color(0xFF8391A1),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
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
                    controller: configPassword,
                    hintText: 'Confirm password',
                  ),
                  SizedBox(height: 38.h),
                  CustomButton(
                    onPressed: () {
                      if (fromKey.currentState!.validate()) {
                        context.go(AppRoutes.cheekPassword); 
                      }
                    },
                    text: 'Reset Password',
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
