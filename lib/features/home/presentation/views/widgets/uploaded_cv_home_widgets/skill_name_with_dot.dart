import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SkillNameWithDot extends StatelessWidget {
  const SkillNameWithDot({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        const CircleAvatar(
          radius: 2,
          backgroundColor: AppColors.blackColor,
        ),
        CustomText(
          title,
          style: Styles.styleLight12(context).copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
