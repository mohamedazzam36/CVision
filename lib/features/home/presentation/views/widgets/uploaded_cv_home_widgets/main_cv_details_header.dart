import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainCvDetailsHeader extends StatelessWidget {
  const MainCvDetailsHeader({
    super.key,
    required this.iconPath,
    required this.title,
    this.iconColor,
  });

  final String iconPath, title;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(iconColor ?? AppColors.blackColor, BlendMode.srcIn),
        ),
        CustomText(
          title,
          style: Styles.styleBlack12(
            context,
          ).copyWith(fontSize: 16, color: AppColors.blackColor),
        ),
      ],
    );
  }
}
