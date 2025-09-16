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

    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 7),
      decoration: BoxDecoration(
        color: const Color(0xffEDE7F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
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
      ),
    );
  }
}
