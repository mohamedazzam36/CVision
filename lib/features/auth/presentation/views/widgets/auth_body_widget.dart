import 'package:cvision/core/extensions/app_helper_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/features/auth/presentation/views/login_view.dart';
import 'package:cvision/features/auth/presentation/views/register_view.dart';
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
          onPressed: () => context.navigate(const LoginView()),
        ),
        const SizedBox(height: 16),
        CustomAuthButton(
          text: 'Create Account',
          textColor: AppColors.primaryColor,
          backgroundColor: AppColors.secondaryColor,
          onPressed: () => context.navigate(const RegisterView()),
        ),
      ],
    );
  }
}
