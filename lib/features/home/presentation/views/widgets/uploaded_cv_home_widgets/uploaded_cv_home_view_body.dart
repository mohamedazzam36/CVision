import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/courses_for_you_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/cv_summary_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/next_step_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/personalized_advice_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/recommended_projects_section.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/strengths_and_weaknesses_section.dart';
import 'package:flutter/material.dart';

class UploadedCvHomeViewBody extends StatelessWidget {
  const UploadedCvHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        spacing: 20,
        children: [
          CvSummarySection(),
          PersonalizedAdviceSection(),
          StrengthsAndWeaknessesSection(),
          NextStepSection(),
          CoursesForYouSection(),
          RecommendedProjectsSection(),
        ],
      ),
    );
  }
}
