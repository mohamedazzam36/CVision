import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/core/widgets/custom_dotted_button.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/detected_skills_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/skills_overview_wraper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsOverviewView extends StatelessWidget {
  const SkillsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'Your Skills Overview',
        hasShodow: true,
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(Assets.imagesTechnicalSkillsIcon),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomText(
                    'Technical Skills',
                    style: Styles.styleBlack12(context).copyWith(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SkillsOverviewWraper(
                skillsList: context
                    .homeCubit
                    .marketComparsion!
                    .data!
                    .skillsData!
                    .marketAnalysis!
                    .marketRequirements!
                    .technical!,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  SvgPicture.asset(Assets.imagesSoftSkillsIcon),
                  const SizedBox(
                    width: 4,
                  ),
                  CustomText(
                    'Soft Skills',
                    style: Styles.styleBlack12(context).copyWith(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SkillsOverviewWraper(
                skillsList: context
                    .homeCubit
                    .marketComparsion!
                    .data!
                    .skillsData!
                    .marketAnalysis!
                    .marketRequirements!
                    .soft!,
              ),
              const SizedBox(
                height: 124,
              ),
              CustomDottedButton(
                text: 'Continue',
                onPressed: () {
                  context.navigate(const DetectedSkillsView());
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
