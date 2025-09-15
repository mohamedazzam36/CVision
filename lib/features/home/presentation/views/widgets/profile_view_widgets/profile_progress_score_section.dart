import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/core/widgets/loading_progress_indicator.dart';
import 'package:flutter/material.dart';

class ProfileProgressScoreSection extends StatelessWidget {
  const ProfileProgressScoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool cvLoaded = context.layoutCubit.isCvUploaded;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              'Roadmap Progress',
              style: Styles.styleBold12(context).copyWith(fontSize: 12),
            ),
            CustomText(
              cvLoaded ? '33%' : '0%',
              style: Styles.styleBold12(context).copyWith(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        LoadingProgressIndecator(
          value: cvLoaded ? 0.33 : 0,
          height: 8,
          progressColor: AppColors.lightThemePrimaryColor,
          backgroundColor: AppColors.secondaryColor,
        ),
      ],
    );
  }
}
