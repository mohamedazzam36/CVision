import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/do_not_have_account_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_and_register_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_header_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_method_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/remember_me_and_forget_password_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/simple_or_section.dart';
import 'package:flutter/material.dart';

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginAndRegisterBodyBackgroundContainer(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 40),
        child: Column(
          children: [
            const LoginHeaderSection(),
            const SizedBox(
              height: 16,
            ),
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
            const SimpleOrSection(),
            LoginMethodButton(
              iconPath: Assets.imagesGoogleIcon,
              text: 'Continue with Google',
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            LoginMethodButton(
              iconPath: Assets.imagesAppleIcon,
              text: 'Continue with Apple',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
