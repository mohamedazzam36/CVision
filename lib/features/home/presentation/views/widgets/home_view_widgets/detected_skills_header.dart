import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetectedSkillsHeader extends StatelessWidget {
  const DetectedSkillsHeader({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          '$title (4)',
          style: Styles.styleBold16(
            context,
          ).copyWith(fontSize: 16, color: AppColors.blackColor),
        ),
      ],
    );
  }
}
