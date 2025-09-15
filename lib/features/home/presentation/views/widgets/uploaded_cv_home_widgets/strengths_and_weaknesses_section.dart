import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/skill_name_with_dot.dart';
import 'package:flutter/material.dart';

class StrengthsAndWeaknessesSection extends StatelessWidget {
  const StrengthsAndWeaknessesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const MainCvDetailsHeader(
          iconPath: Assets.imagesStrengthsAndWeaknessesIcon,
          title: 'Strengths & Weaknesses',
        ),
        Row(
          spacing: 8,
          children: [
            Expanded(
              child: MainCvDetailsCard(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                opasity: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Strengths',
                      style: Styles.styleBold12(
                        context,
                      ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SkillNameWithDot(title: 'Problem-solving.'),
                          SkillNameWithDot(title: 'React'),
                          SkillNameWithDot(title: 'Git/GitHub'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MainCvDetailsCard(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                opasity: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Weaknesses',
                      style: Styles.styleBold12(
                        context,
                      ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SkillNameWithDot(title: 'SQL basics.'),
                          SkillNameWithDot(title: 'Cloud fundamentals'),
                          SkillNameWithDot(title: 'Public speaking'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
