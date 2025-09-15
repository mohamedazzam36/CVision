import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RegisterHeaderSection extends StatelessWidget {
  const RegisterHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          'Create your Account',
          style: Styles.styleRegular28(context).copyWith(fontSize: 28),
        ),
        CustomText(
          'Sign up and let our AI create a clear roadmap\n'
          'just for you!',
          style: Styles.styleLight12(context).copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
