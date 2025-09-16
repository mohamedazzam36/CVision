import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class SkillCardItem extends StatelessWidget {
  const SkillCardItem({
    super.key,
    required this.title,
    required this.level,
    required this.progressValue,
  });

  final String title, level;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryColor,
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 12,
        ),
        child: Column(
          spacing: 12,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: Styles.styleBold12(context).copyWith(
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  level,
                  style: Styles.styleLight12(context).copyWith(
                    fontSize: 8,
                  ),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: progressValue,
              minHeight: 8,
              borderRadius: BorderRadius.circular(42),
              color: progressValue > 0.5 ? const Color(0xff26C6DA) : const Color(0xffE57373),
              backgroundColor: const Color(0xffEDE7F6),
            ),
          ],
        ),
      ),
    );
  }
}
