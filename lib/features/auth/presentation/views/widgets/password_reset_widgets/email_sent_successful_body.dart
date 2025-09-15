import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_successful_body_header.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmailSentSuccessfulBody extends StatelessWidget {
  const EmailSentSuccessfulBody({
    super.key,
    required this.onPressed,
    required this.title,
    required this.subTitle,
    this.secSubTitle,
    this.thirdSubTitle,
  });
  final String title, subTitle;
  final void Function() onPressed;
  final String? secSubTitle, thirdSubTitle;

  @override
  Widget build(BuildContext context) {
    return AuthBodyBackgroundContainer(
      padding: const EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 168),
      child: Column(
        children: [
          Lottie.asset(
            Assets.imagesEmailAnimation,
            height: 180,
            width: 180,
            repeat: false,
          ),
          const SizedBox(
            height: 16,
          ),
          AuthSuccessfulBodyHeader(
            title: title,
            subTitle: subTitle,
            secSubTitle: secSubTitle,
            thirdSubTitle: thirdSubTitle,
          ),
          const SizedBox(
            height: 56,
          ),
          CustomAuthButton(
            text: 'Continue',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
