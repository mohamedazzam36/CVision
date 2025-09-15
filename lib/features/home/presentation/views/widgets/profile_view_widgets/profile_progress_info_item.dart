import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileProgressInfoItem extends StatelessWidget {
  const ProfileProgressInfoItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.progress,
  });

  final String title, subTitle, progress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          progress,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'Merriweather',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        CustomText(
          title,
          style: Styles.styleBold12(context).copyWith(fontSize: 12, color: const Color(0xff929090)),
        ),
        CustomText(
          subTitle,
          style: Styles.styleBold12(context).copyWith(fontSize: 12, color: const Color(0xff929090)),
        ),
      ],
    );
  }
}
