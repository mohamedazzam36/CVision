import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_text.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton({
    super.key,
    this.backgroundColor = AppColors.lightThemePrimaryColor,
    required this.text,
    this.textColor,
    this.icon,
    required this.onPressed,
  });

  final Color backgroundColor;
  final String text;
  final Color? textColor;
  final Widget? icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(32),
            side: const BorderSide(color: AppColors.lightThemePrimaryColor),
          ),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text,
              style: Styles.styleLight16(
                context,
              ).copyWith(color: textColor ?? AppColors.secondaryColor, fontSize: 16),
            ),
            ?icon,
          ],
        ),
      ),
    );
  }
}
