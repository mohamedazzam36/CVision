import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/auth/presentation/views/widgets/custom_auth_text_field.dart';
import 'package:flutter/material.dart';

class CustomAuthTextFieldSection extends StatelessWidget {
  const CustomAuthTextFieldSection({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
  });

  final String title;
  final String hintText;
  final bool isPassword;

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
        ),
      ],
    );
  }
}
