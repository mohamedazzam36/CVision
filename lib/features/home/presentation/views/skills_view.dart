import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/score_view_widgets/circle_widget.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/container_of_skills.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/skills_view_with_no_content.dart';
import 'package:flutter/material.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});
  @override
  Widget build(BuildContext context) {
    return context.layoutCubit.isCvUploaded
        ? Scaffold(
            body: MainLayoutStructure(
              appBarTitle: 'Skills Overview',
              centerTitle: true,
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      "Here’s a breakdown of your technical expertise and soft skills, highlighting strengths and areas to improve.",
                      style: Styles.styleRegular12(context).copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const CircularScore(
                                backgroundColor: AppColors.secondaryColor,
                                radius: 75.0,
                                lineWidth: 13,
                                percent: .72,
                                progressColor: Color(0xff9B14BC),
                              ),
                              Row(
                                spacing: 4,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 4,
                                    backgroundColor: AppColors.primaryColor,
                                  ),
                                  CustomText(
                                    "Technical",
                                    style: Styles.styleBlack12(
                                      context,
                                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const CircularScore(
                                backgroundColor: AppColors.secondaryColor,
                                radius: 75.0,
                                lineWidth: 13,
                                percent: .89,
                                progressColor: Color(0xffC678DD),
                              ),
                              Row(
                                spacing: 4,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Color(0xffC678DD),
                                  ),
                                  CustomText(
                                    "Soft",
                                    style: Styles.styleBlack12(
                                      context,
                                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ContainerOfSkills(
                      titleOfSkills: "Strengths Skills",
                      iconPath: Assets.imagesStrengthSkillsIcon,
                      dummySkills: dummyStrengthSkills,
                      progressValue: 0.65,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ContainerOfSkills(
                        titleOfSkills: "Skill Gaps",
                        iconPath: Assets.imagesImprovementSkillsIcon,
                        dummySkills: dummyGapSkills,
                        progressValue: 0.35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const SkillsViewWithNoContent();
  }
}
