import 'package:cvision/core/extensions/app_helper_extensions.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_successful_body_header.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AuthSuccessfulBody extends StatelessWidget {
  const AuthSuccessfulBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBodyBackgroundContainer(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 168),
      child: Column(
        children: [
          Lottie.asset(
            Assets.imagesSuccessAnimation,
            height: 120,
            width: 120,
            repeat: false,
          ),
          const SizedBox(
            height: 16,
          ),
          const AuthSuccessfulBodyHeader(
            title: 'Sucessful',
            subTitle: 'Congratulations! Your password has\nbeen changed. Click continue to login',
          ),
          const SizedBox(
            height: 56,
          ),
          CustomAuthButton(
            text: 'Continue',
            onPressed: () {
              context.popTimes(2);
            },
          ),
        ],
      ),
    );
  }
}
