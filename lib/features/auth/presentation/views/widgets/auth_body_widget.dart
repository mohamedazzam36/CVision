import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';

class AuthBodyWidget extends StatelessWidget {
  const AuthBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthButton(
          text: 'Login',
          backgroundColor: AppColors.primaryColor,
          onPressed: () {},
        ),
        const SizedBox(height: 16),
        CustomAuthButton(
          text: 'Create Account',
          textColor: AppColors.primaryColor,
          backgroundColor: const Color(0xffFFFFFF),
          onPressed: () {},
        ),
      ],
    );
  }
}
