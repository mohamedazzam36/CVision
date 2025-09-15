import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.height,
    this.fontSize,
    this.buttonName,
    required this.buttonColor,
    this.textColor,
    required this.onPressed,
  });

  final double? height;
  final double? fontSize;
  final String? buttonName;
  final Color buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        onPressed: onPressed,
        child: Text(
          buttonName!,
          style: Styles.styleRegular12(context).copyWith(
            fontSize: fontSize!,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
