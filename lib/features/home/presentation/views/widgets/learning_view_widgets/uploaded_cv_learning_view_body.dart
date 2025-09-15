import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/learning_header.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/learning_skills_list_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadedCvLearningViewBody extends StatelessWidget {
  const UploadedCvLearningViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MainCvDetailsCard(
        opasity: 180,
        child: Column(
          children: [
            const LearningHeader(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 52),
              child: Divider(
                color: Color(0xff9F9C9C),
                thickness: 1.5,
              ),
            ),
            const LearningSkillsListView(),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffEDE7F6),
              ),
              child: Row(
                spacing: 15,
                children: [
                  SvgPicture.asset(Assets.imagesFinishSkillIcon),
                  CustomText(
                    'Finished',
                    style: Styles.styleRegular12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.blackColor),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(color: AppColors.lightThemePrimaryColor),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 1,
                children: [
                  const Icon(
                    Icons.upload,
                    color: AppColors.lightThemePrimaryColor,
                  ),
                  CustomText(
                    'Update your CV',
                    style: Styles.styleBold12(
                      context,
                    ).copyWith(fontSize: 12, color: AppColors.lightThemePrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
