import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:flutter/material.dart';

class RecommendedProjectsSection extends StatelessWidget {
  const RecommendedProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const MainCvDetailsHeader(
          iconPath: Assets.imagesRecommendedProjectsIcon,
          title: 'Recommended Projects',
        ),
        MainCvDetailsCard(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                CustomText(
                  'E-Commerce App (with cart & payment integration)',
                  style: Styles.styleRegular12(
                    context,
                  ).copyWith(fontSize: 12, color: AppColors.blackColor),
                ),
                CustomText(
                  'Chat Application (with Firebase backend)',
                  style: Styles.styleRegular12(
                    context,
                  ).copyWith(fontSize: 12, color: AppColors.blackColor),
                ),
                CustomText(
                  'Fitness Tracker App (steps, calories, goals)',
                  style: Styles.styleRegular12(
                    context,
                  ).copyWith(fontSize: 12, color: AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
