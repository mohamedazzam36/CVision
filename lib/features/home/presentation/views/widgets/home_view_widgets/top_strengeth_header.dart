import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopStrengethHeader extends StatelessWidget {
  const TopStrengethHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.imagesGreenCheckIcon,
          width: 24,
          height: 24,
        ),
        const SizedBox(
          width: 4,
        ),
        CustomText(
          'Top Strengeth (3)',
          style: Styles.styleBold16(
            context,
          ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
        ),
      ],
    );
  }
}
