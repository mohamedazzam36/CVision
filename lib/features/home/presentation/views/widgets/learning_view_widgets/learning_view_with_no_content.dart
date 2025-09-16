import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class LearningViewWithNoContent extends StatelessWidget {
  const LearningViewWithNoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayoutStructure(
        appBarTitle: '',
        sliver: SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                Assets.imagesLearning,
                width: 303,
                height: 260,
              ),
              SizedBox(
                height: context.height * .03,
              ),
              CustomText(
                "No learning path yet.",
                style: Styles.styleBold24(
                  context,
                ).copyWith(fontSize: 24, color: AppColors.blackColor.withAlpha(180)),
              ),
              SizedBox(
                height: context.height * .01,
              ),
              Text(
                "Upload your CV to get personalized courses\n and resources tailored to your goals.",
                style: Styles.styleRegular16(context).copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
