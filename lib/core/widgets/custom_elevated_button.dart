import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.backgroundColor = AppColors.primaryColor,
    required this.text,
    this.textColor = AppColors.secondaryColor,
    required this.onPressed,
    this.isDisabled = false,
    this.isLoading = false,
    this.borderColor = AppColors.primaryColor,
    this.width = double.infinity,
    this.height = 50,
    this.elevation = 4,
    this.textStyle,
    this.fontSize = 12,
    this.prefixIcon,
    this.borderRadius = 32,
  });

  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final String text;
  final bool isDisabled;
  final bool isLoading;
  final void Function() onPressed;
  final double width, height, elevation, fontSize, borderRadius;
  final TextStyle? textStyle;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisabled || isLoading,
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(borderRadius),
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
              : Row(
                  spacing: 1,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ?prefixIcon,
                    CustomText(
                      text,
                      style:
                          textStyle ??
                          Styles.styleBold12(
                            context,
                          ).copyWith(color: textColor, fontSize: fontSize),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
