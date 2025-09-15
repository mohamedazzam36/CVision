import 'package:cvision/core/extensions/learning_skills_extension.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_check_box.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LearningSkillsListViewItem extends StatelessWidget {
  const LearningSkillsListViewItem({super.key, required this.skill});

  final LearningSkillsModel skill;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      collapsedBackgroundColor: const Color(0xffEDE7F6),
      backgroundColor: const Color(0xffEDE7F6),
      childrenPadding: const EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 12.5),
      minTileHeight: 32,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      showTrailingIcon: false,
      title: Row(
        children: [
          SvgPicture.asset(skill.state.icon),
          const SizedBox(
            width: 4,
          ),
          CustomText(
            skill.name,
            style: Styles.styleRegular12(
              context,
            ).copyWith(fontSize: 12, color: AppColors.blackColor),
          ),
          const SizedBox(
            width: 4,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.lightThemePrimaryColor,
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: skill.state.color,
            ),
            child: CustomText(
              skill.state.name,
              style: Styles.styleLight12(context).copyWith(fontSize: 12),
            ),
          ),
        ],
      ),
      children: [
        Column(
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.imagesSkillTimeIcon),
                        CustomText(
                          'Time',
                          style: Styles.styleBold12(context).copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    CustomText(
                      skill.time,
                      style: Styles.styleRegular12(context).copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.imagesSkillDifficultyIcon),
                        CustomText(
                          'Difficulty',
                          style: Styles.styleBold12(context).copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    CustomText(
                      skill.difficulty,
                      style: Styles.styleRegular12(context).copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      spacing: 2,
                      children: [
                        SvgPicture.asset(Assets.imagesSkillPriorityIcon),
                        CustomText(
                          'Priority',
                          style: Styles.styleBold12(context).copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                    CustomText(
                      skill.priority,
                      style: Styles.styleRegular12(context).copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              spacing: 4,
              children: [
                const CustomCheckBox(),
                CustomText(
                  'Mark as Completed',
                  style: Styles.styleLight12(context).copyWith(fontSize: 12),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 2,
                  children: [
                    SvgPicture.asset(Assets.imagesLearningResoursesIcon),
                    CustomText(
                      'Learn Resources :',
                      style: Styles.styleBold12(
                        context,
                      ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                    ),
                  ],
                ),
                CustomText(
                  skill.resources,
                  style:
                      Styles.styleRegular12(
                        context,
                      ).copyWith(
                        fontSize: 12,
                        color: AppColors.blackColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.blackColor,
                        decorationThickness: 1.5,
                      ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
