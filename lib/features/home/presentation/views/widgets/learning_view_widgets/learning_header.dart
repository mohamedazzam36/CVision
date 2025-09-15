import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LearningHeader extends StatelessWidget {
  const LearningHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xff3DDC97),
          ),
          child: Row(
            spacing: 4,
            children: [
              CustomText('2', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
              CustomText('Completed', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xffA1BCF4),
          ),
          child: Row(
            spacing: 4,
            children: [
              CustomText('1', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
              CustomText('In Progress', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xffD9D9D9),
          ),
          child: Row(
            spacing: 4,
            children: [
              CustomText('3', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
              CustomText('Upcoming', style: Styles.styleLight12(context).copyWith(fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }
}
