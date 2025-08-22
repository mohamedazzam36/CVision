import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_and_register_body_background_container.dart';
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
            CustomText(
              'Welcome Back !',
              style: Styles.styleRegular28(context).copyWith(fontSize: 28),
            ),
            CustomText(
              'Your journey to professional growth starts here\n'
              'Let\'s make your career goals a reality.',
              style: Styles.styleLight12(context).copyWith(fontSize: 12),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
