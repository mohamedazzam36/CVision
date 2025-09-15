import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
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
                        color: AppColors.secondaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              CircularScore(
                                backgroundColor: Color(0xffEFD9F5),
                                radius: 75.0,
                                lineWidth: 13,
                                percent: .27,
                                progressColor: Color(0xff9046C3),
                              ),
                              Text("Technical"),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            CircularScore(
                              backgroundColor: Color(0xffEFD9F5),
                              radius: 75.0,
                              lineWidth: 13,
                              percent: .72,
                              progressColor: Color(0xffC18ACF),
                            ),
                            Text("Soft"),
                          ],
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: ContainerOfSkills(
                        titleOfSkills: "Skill Gaps",
                        iconPath: Assets.imagesSkillGapIcon,
                        dummySkills: dummyGapSkills,
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
