import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/custom_auth_text_field.dart';
import 'package:flutter/material.dart';

class CustomAuthTextFieldSection extends StatelessWidget {
  const CustomAuthTextFieldSection({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.obscureText = false,
    this.onIconPressed,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.onSaved,
    this.controller,
    this.prefixIcon,
    this.initialValue,
  });

  final String title;
  final String hintText;
  final bool isPassword;
  final bool obscureText;
  final void Function()? onIconPressed;
  final void Function(String)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CustomText(
            title,
            style: Styles.styleLight16(context).copyWith(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomAuthTextField(
          hintText: hintText,
          isPassword: isPassword,
          onIconPressed: onIconPressed,
          obscureText: obscureText,
          onFieldSubmitted: onFieldSubmitted,
          focusNode: focusNode,
          textInputAction: textInputAction,
          validator: validator,
          onSaved: onSaved,
          controller: controller,
          prefixIcon: prefixIcon,
          initialValue: initialValue,
        ),
      ],
    );
  }
}
