import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_elevated_button.dart';
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
        backgroundColor: AppColors.secondaryColor,
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
            CustomElevatedButton(
              text: 'Update your CV',
              onPressed: () => context.homeCubit.pickAndUploadFile(),
              prefixIcon: const Icon(
                Icons.upload,
                color: AppColors.primaryColor,
              ),
              borderRadius: 12,
              height: 30,
              width: 150,
              backgroundColor: AppColors.secondaryColor,
              textColor: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
