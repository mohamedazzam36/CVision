import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_and_register_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_header_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_method_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_user_input_section.dart';
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
            const LoginUserInputSection(),
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
