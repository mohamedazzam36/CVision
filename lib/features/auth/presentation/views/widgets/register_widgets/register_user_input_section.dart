import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/password_input_confirmation_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/agree_conditions_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/already_have_account_section.dart';
import 'package:cvision/features/auth/presentation/views/widgets/register_widgets/register_button_section.dart';
import 'package:flutter/material.dart';

class RegisterUserInputSection extends StatefulWidget {
  const RegisterUserInputSection({super.key});

  @override
  State<RegisterUserInputSection> createState() => _RegisterUserInputSectionState();
}

class _RegisterUserInputSectionState extends State<RegisterUserInputSection> {
  final FocusNode secondNode = FocusNode(), thirdNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey();
  String? email, password, name;
  bool isAgreed = false;

  @override
  void dispose() {
    secondNode.dispose();
    thirdNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomAuthTextFieldSection(
            title: 'Name',
            hintText: 'Enter Your Name',
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(secondNode),
            onSaved: (value) => name = value,
          ),
          const SizedBox(
            height: 12,
          ),
          CustomAuthTextFieldSection(
            title: 'Email',
            hintText: 'Enter Your Email',
            focusNode: secondNode,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(thirdNode),
            onSaved: (value) => email = value,
          ),
          const SizedBox(
            height: 12,
          ),
          PasswordInputConfirmationSection(
            currentNode: thirdNode,
            onSaved: (value) => password = value,
          ),
          const SizedBox(
            height: 12,
          ),
          AgreeConditionsSection(
            isAgreed: isAgreed,
            onCheckPressed: (value) {
              isAgreed = !isAgreed;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 20,
          ),
          RegisterButtonSection(
            isAgreed: isAgreed,
            formKey: formKey,
            onSubmitted: () {
              formKey.currentState!.save();
              context.authCubit.emailAndPaawordRegister(
                name: name!,
                email: email!,
                password: password!,
              );
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const AlreadyHaveAccountSection(),
        ],
      ),
    );
  }
}
