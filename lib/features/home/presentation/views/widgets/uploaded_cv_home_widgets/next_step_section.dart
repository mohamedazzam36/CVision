import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:flutter/material.dart';

class NextStepSection extends StatelessWidget {
  const NextStepSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        const MainCvDetailsHeader(iconPath: Assets.imagesNextStepIcon, title: 'Next Step'),
        MainCvDetailsCard(
          child: Column(
            spacing: 8,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Skill:',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.primaryColor),
                  ),
                  Expanded(
                    child: Text(
                      ' Improve your API Integration skills.',
                      style: Styles.styleBold12(context).copyWith(fontSize: 12),
                    ),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Resource:',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.primaryColor),
                  ),
                  Expanded(
                    child: Text(
                      ' Take a short course on REST API with Flutter (Coursera).',
                      style: Styles.styleBold12(context).copyWith(fontSize: 12),
                    ),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Mini Project:',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.primaryColor),
                  ),
                  Expanded(
                    child: Text(
                      ' Build a Weather App using OpenWeather API.',
                      style: Styles.styleBold12(context).copyWith(fontSize: 12),
                    ),
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
