import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/login_method_button.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/simple_or_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/register_header_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/register_user_input_section.dart';
import 'package:flutter/material.dart';

class RegisterBodyWidget extends StatelessWidget {
  const RegisterBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBodyBackgroundContainer(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 40),
      child: Column(
        children: [
          const RegisterHeaderSection(),
          const SizedBox(
            height: 16,
          ),
          const RegisterUserInputSection(),
          const SimpleOrSection(),
          LoginMethodButton(
            iconPath: Assets.imagesGoogleIcon,
            text: 'Continue with Google',
            onPressed: () async => await context.authCubit.signInWithGoogle(),
          ),
          const SizedBox(
            height: 16,
          ),
          LoginMethodButton(
            iconPath: Assets.imagesFacebookIcon,
            text: 'Continue with Facebook',
            onPressed: () async {
              await context.authCubit.signInWithFacebook();
            },
          ),
        ],
      ),
    );
  }
}
