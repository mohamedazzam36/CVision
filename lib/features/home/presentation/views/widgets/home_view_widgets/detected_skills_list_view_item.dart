import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/core/widgets/loading_progress_indicator.dart';
import 'package:flutter/material.dart';

class DetectedSkillsListViewItem extends StatelessWidget {
  const DetectedSkillsListViewItem({super.key, required this.skillName, required this.skillScore});

  final String skillName;
  final double skillScore;

  @override
  Widget build(BuildContext context) {
    final Color skillColor = skillScore < 50 ? const Color(0xffFFCC00) : const Color(0xff27C840);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 12.5, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withAlpha(200),
        borderRadius: BorderRadius.circular(16),
        border: Border(
          left: BorderSide(
            color: skillColor,
            width: 5,
          ),
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 16,
            backgroundColor: AppColors.lightThemePrimaryColor,
            child: Icon(Icons.insert_drive_file, color: AppColors.secondaryColor),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(skillName, style: Styles.styleBold12(context).copyWith(fontSize: 12)),
                const SizedBox(
                  height: 8,
                ),
                LoadingProgressIndecator(
                  value: skillScore / 100,
                  height: 8,
                  progressColor: skillColor,
                  backgroundColor: AppColors.secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
