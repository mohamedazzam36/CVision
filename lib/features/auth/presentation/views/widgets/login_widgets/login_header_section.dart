import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginHeaderSection extends StatelessWidget {
  const LoginHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'Welcome Back !',
          style: Styles.styleRegular28(context).copyWith(fontSize: 28),
        ),
        CustomText(
          'Your journey to professional growth starts here\n'
          'Let\'s make your career goals a reality.',
          style: Styles.styleLight12(context).copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
