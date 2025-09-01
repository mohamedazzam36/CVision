import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(100),
      dashPattern: const [6, 3],
      color: AppColors.secondaryColor,
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(100),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          child: CustomText(
            'Send Message',
            style: Styles.styleLight16(
              context,
            ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
          ),
        ),
      ),
    );
  }
}
