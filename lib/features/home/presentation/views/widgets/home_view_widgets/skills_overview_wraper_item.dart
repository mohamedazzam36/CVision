import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SkillsOverviewWraperItem extends StatelessWidget {
  const SkillsOverviewWraperItem({super.key, required this.skillName});

  final String skillName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: AppColors.blackColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            skillName,
            style: const TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w400,
              fontFamily: 'Merriweather',
              color: AppColors.blackColor,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          const Icon(
            Icons.close,
            color: AppColors.blackColor,
            size: 16,
          ),
        ],
      ),
    );
  }
}
