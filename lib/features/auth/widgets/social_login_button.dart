import 'package:finance_ui/core/utils/assets.dart';
import 'package:finance_ui/features/auth/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: () {}, iconPath: Assets.imagesFacebook),
        CustomIconButton(onTap: () {}, iconPath: Assets.imagesGoogle),
        CustomIconButton(onTap: () {}, iconPath: Assets.imagesApple),
      ],
    );
  }
}
