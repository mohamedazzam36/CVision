import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    this.textColor,
    required this.onPressed,
  });

  final Color backgroundColor;
  final String text;
  final Color? textColor;
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
            side: const BorderSide(color: AppColors.primaryColor),
          ),
          backgroundColor: backgroundColor,
        ),
        child: CustomText(
          text,
          style: Styles.styleLight16(
            context,
          ).copyWith(color: textColor ?? AppColors.secondaryColor, fontSize: 16),
        ),
      ),
    );
  }
}
