import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/password_input_confirmation_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_reset_body_header.dart';
import 'package:flutter/material.dart';

class NewPasswordBody extends StatelessWidget {
  const NewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBodyBackgroundContainer(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 188),
      child: Column(
        children: [
          const PasswordResetBodyHeader(
            title: 'Set a new password',
            subTitle: 'Create a new password. Ensure it differs from',
            secSubTitle: 'previous ones for security',
          ),
          const SizedBox(
            height: 44,
          ),
          const PasswordInputConfirmationSection(),
          const SizedBox(
            height: 20,
          ),
          CustomAuthButton(
            text: 'Update password',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
