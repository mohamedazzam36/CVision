import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/views/widgets/layout_widgets/main_layout_structure.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class SkillsViewWithNoContent extends StatelessWidget {
  const SkillsViewWithNoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayoutStructure(
      appBarTitle: '',
      sliver: SliverToBoxAdapter(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesSkills,
              width: context.width * .5,
              height: context.width * .5,
            ),
            SizedBox(
              height: context.height * .03,
            ),
            Text(
              "No skills detected yet.",
              style: Styles.styleMedium14(context).copyWith(
                fontSize: 24,
                color: AppColors.secondaryColor.withValues(
                  alpha: .5,
                ),
              ),
            ),
            SizedBox(
              height: context.height * .01,
            ),
            Text(
              "Upload your CV to unlock\n your skills insights.",
              style: Styles.styleLight16(context).copyWith(
                fontSize: 16,
                color: AppColors.secondaryColor.withValues(
                  alpha: .4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
