import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DoNotHaveAccountSection extends StatelessWidget {
  const DoNotHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          'Don’t have an account?',
          style: Styles.styleLight12(context).copyWith(fontSize: 12),
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          'Create Account',
          style: Styles.styleLight12(context).copyWith(fontSize: 12, color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
