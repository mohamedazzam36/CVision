import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class SkillCardItem extends StatelessWidget {
  const SkillCardItem({super.key, required this.title, required this.level});

  final String title, level;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryColor.withValues(alpha: .7),
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
              value: .40,
              minHeight: 8,
              borderRadius: BorderRadius.circular(42),
              color: const Color(0xff3DDC97),
              backgroundColor: const Color(0xffD9D9D9),
            ),
          ],
        ),
      ),
    );
  }
}
