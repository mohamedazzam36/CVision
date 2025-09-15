import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:flutter/material.dart';

class CoursesForYouSection extends StatelessWidget {
  const CoursesForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const MainCvDetailsHeader(
          iconPath: Assets.imagesCoursesForYouIcon,
          title: 'Courses for You',
        ),
        MainCvDetailsCard(
          opasity: 245,
          child: Column(
            spacing: 8,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    'Flutter & Dart – The Complete Guide',
                    style: Styles.styleRegular12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                  ),
                  CustomText(
                    'Udemy',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    'Build Native Mobile Apps with Flutter',
                    style: Styles.styleRegular12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                  ),
                  CustomText(
                    'Coursera',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    'Firebase for Flutter',
                    style: Styles.styleRegular12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                  ),
                  CustomText(
                    'YouTube',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
