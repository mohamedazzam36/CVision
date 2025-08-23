import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_reset_body_header.dart';
import 'package:flutter/material.dart';

class EmailCheckBody extends StatelessWidget {
  const EmailCheckBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthBodyBackgroundContainer(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 244),
      child: Column(
        children: [
          PasswordResetBodyHeader(
            title: 'Check your Email',
            subTitle: 'We sent a reset link to your Email',
            secSubTitle: 'enter 5 digit code that mentioned in the email',
          ),
          SizedBox(
            height: 44,
          ),
        ],
      ),
    );
  }
}
