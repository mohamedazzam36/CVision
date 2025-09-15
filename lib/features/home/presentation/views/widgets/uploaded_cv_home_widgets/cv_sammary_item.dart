import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CvSammaryItem extends StatelessWidget {
  const CvSammaryItem({super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor.withAlpha(200),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.secondaryColor),
      ),
      child: Column(
        spacing: 8,
        children: [
          CustomText(
            title,
            style: Styles.styleBold16(context).copyWith(
              fontSize: 16,
            ),
          ),
          CustomText(subTitle, style: Styles.styleBold12(context).copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}
