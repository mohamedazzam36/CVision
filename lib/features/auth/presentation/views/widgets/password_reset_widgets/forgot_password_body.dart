import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/auth_body_background_container.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_reset_body_header.dart';
import 'package:cvision/features/auth/presentation/views/widgets/password_reset_widgets/password_reset_button_section.dart';
import 'package:flutter/cupertino.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String? email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: AuthBodyBackgroundContainer(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 16, bottom: 268),
        child: Column(
          children: [
            const PasswordResetBodyHeader(
              title: 'Forgot password',
              subTitle: 'please enter your Email to reset the password',
            ),
            const SizedBox(
              height: 44,
            ),
            CustomAuthTextFieldSection(
              title: 'Email',
              hintText: 'Enter Your Email',
              textInputAction: TextInputAction.done,
              onSaved: (value) => email = value,
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordResetButtonSection(
              formKey: formKey,
              onSubmitted: () => context.authCubit.updatePassword(email!),
            ),
          ],
        ),
      ),
    );
  }
}
