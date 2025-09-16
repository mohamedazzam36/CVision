import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/core/widgets/loading_progress_indicator.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_header.dart';
import 'package:flutter/material.dart';

class CvSummaryHeader extends StatelessWidget {
  const CvSummaryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MainCvDetailsHeader(
          iconPath: Assets.imagesSummaryIcon,
          title: 'Your Summary',
          iconColor: AppColors.primaryColor,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              'Roadmap Progress',
              style: Styles.styleBold12(context).copyWith(fontSize: 12),
            ),
            CustomText(
              '33%',
              style: Styles.styleBold12(context).copyWith(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const LoadingProgressIndecator(
          value: 0.33,
          height: 8,
          progressColor: AppColors.primaryColor,
          backgroundColor: AppColors.secondaryColor,
        ),
      ],
    );
  }
}
