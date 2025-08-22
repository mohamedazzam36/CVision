import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SimpleOrSection extends StatelessWidget {
  const SimpleOrSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xff707070),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: CustomText(
              'Or',
              style: Styles.styleBold16(
                context,
              ).copyWith(fontSize: 12, color: AppColors.blackColor),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xff707070),
            ),
          ),
        ],
      ),
    );
  }
}
