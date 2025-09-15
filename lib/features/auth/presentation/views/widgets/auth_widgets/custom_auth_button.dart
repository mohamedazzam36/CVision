import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.backgroundColor = AppColors.lightThemePrimaryColor,
    required this.text,
    this.textColor = AppColors.secondaryColor,
    required this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
    this.borderColor = AppColors.lightThemePrimaryColor,
  });

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final bool isDisabled;
  final bool isLoading;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisabled || isLoading,
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(32),
              side: BorderSide(
                color: isDisabled || isLoading ? borderColor.withAlpha(0) : borderColor,
              ),
            ),
            backgroundColor: isDisabled || isLoading
                ? backgroundColor.withAlpha(100)
                : backgroundColor,
          ),
          child: isLoading
              ? SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(
                    color: textColor.withAlpha(200),
                  ),
                )
              : CustomText(
                  text,
                  style: Styles.styleLight16(
                    context,
                  ).copyWith(color: textColor, fontSize: 16),
                ),
        ),
      ),
    );
  }
}
