import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/do_not_have_account_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/remember_me_and_forget_password_section.dart';
import 'package:flutter/material.dart';

class LoginUserInputSection extends StatelessWidget {
  const LoginUserInputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAuthTextFieldSection(
          title: 'Email',
          hintText: 'Enter Your Email',
        ),
        const SizedBox(
          height: 12,
        ),
        const CustomAuthTextFieldSection(
          title: 'Password',
          hintText: 'Enter Your Password',
          isPassword: true,
        ),
        const SizedBox(
          height: 8,
        ),
        const RememberMeAndForgetPasswordSection(),
        const SizedBox(
          height: 20,
        ),
        CustomAuthButton(
          text: 'Login',
          onPressed: () {},
        ),
        const SizedBox(
          height: 12,
        ),
        const DoNotHaveAccountSection(),
      ],
    );
  }
}
