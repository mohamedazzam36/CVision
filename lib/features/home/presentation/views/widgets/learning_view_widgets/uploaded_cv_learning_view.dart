import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/uploaded_cv_learning_view_body.dart';
import 'package:flutter/material.dart';

class UploadedCvLearningView extends StatelessWidget {
  const UploadedCvLearningView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayoutStructure(
        centerTitle: true,
        appBarTitle: '',
        title: Column(
          children: [
            CustomText(
              'Your Personalized Road Map',
              style: Styles.styleBold16(
                context,
              ).copyWith(fontSize: 16, color: AppColors.secondaryColor),
            ),
            const SizedBox(
              height: 8,
            ),
            CustomText(
              'Track your progress and stay on top of your',
              style: Styles.styleRegular12(
                context,
              ).copyWith(fontSize: 12, color: AppColors.secondaryColor),
            ),
            CustomText(
              'learning journey',
              style: Styles.styleRegular12(
                context,
              ).copyWith(fontSize: 12, color: AppColors.secondaryColor),
            ),
          ],
        ),
        sliver: const UploadedCvLearningViewBody(),
      ),
    );
  }
}
