import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/email_sent_successful_body.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:flutter/material.dart';

class PasswordUpdatedSuccessWidget extends StatelessWidget {
  const PasswordUpdatedSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainAuthViewsStructure(
        child: EmailSentSuccessfulBody(
          onPressed: () => context.popTimes(2),
          title: 'Check Your Email',
          subTitle: 'Password reset email has been sent',
          secSubTitle: 'successfully. Please check your inbox,',
          thirdSubTitle: 'Click continue to login',
        ),
      ),
    );
  }
}
