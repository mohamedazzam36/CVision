import 'dart:developer';

import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/services/token_service.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_widgets/do_not_have_account_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_widgets/login_button_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_widgets/password_input_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/login_widgets/remember_me_and_forget_password_section.dart';
import 'package:flutter/material.dart';

class LoginUserInputSection extends StatefulWidget {
  const LoginUserInputSection({
    super.key,
  });

  @override
  State<LoginUserInputSection> createState() => _LoginUserInputSectionState();
}

class _LoginUserInputSectionState extends State<LoginUserInputSection> {
  final FocusNode secondNode = FocusNode();
  String? email, password;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  void dispose() {
    secondNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomAuthTextFieldSection(
            title: 'Email',
            hintText: 'Enter Your Email',
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(secondNode),
            onSaved: (value) => email = value,
          ),
          const SizedBox(
            height: 12,
          ),
          PasswordInputSection(
            currentNode: secondNode,
            onSaved: (value) => password = value,
          ),
          const SizedBox(
            height: 12,
          ),
          const RememberMeAndForgetPasswordSection(),
          const SizedBox(
            height: 20,
          ),
          LoginButtonSection(
            formKey: formKey,
            onSubmitted: () async {
              formKey.currentState!.save();
              await context.authCubit.emailAndPaawordSignIn(
                email: email!,
                password: password!,
              );
              log(TokenService.currentToken);
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const DoNotHaveAccountSection(),
        ],
      ),
    );
  }
}
