import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/core/widgets/custom_dotted_button.dart';
import 'package:cvision/features/home/presentation/manager/layout_cubit/layout_states.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/improvment_skills_list_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/top_stremgth_skills_list_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/detected_skills_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetectedSkillsView extends StatelessWidget {
  const DetectedSkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    final skillsPath =
        context.homeCubit.marketComparsion!.data!.skillsData!.marketAnalysis!.skillAnalysis!;

    return Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'Skills Detected from Your CV',
        hasShodow: true,
        sliver: SliverToBoxAdapter(
          child: Column(
            children: [
              const DetectedSkillsHeader(
                iconPath: Assets.imagesGreenCheckIcon,
                title: 'Top Strengeth',
              ),
              const SizedBox(
                height: 8,
              ),
              TopStrengthSkillsListView(
                skillsList: skillsPath.strengths!.take(4).toList(),
              ),
              const DetectedSkillsHeader(
                iconPath: Assets.imagesSoftSkillsIcon,
                title: 'Improvment Area',
              ),
              const SizedBox(
                height: 8,
              ),
              ImprovmentSkillsListView(skillsList: skillsPath.gaps!.take(4).toList()),
              const SizedBox(
                height: 20,
              ),
              CustomDottedButton(
                text: 'Continue',
                onPressed: () async {
                  await prefs.setBool(kIsCvUploaded, true);
                  context.layoutCubit.isCvUploaded = true;
                  context.layoutCubit.currentIndex = 0;

                  context.go(AppRouter.kSplashView);
                  Future.delayed(const Duration(milliseconds: 200), () {
                    context.go(AppRouter.kLayoutView);
                    context.layoutCubit.emit(ChangeBottomNavBarState());
                  });
                },
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
