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
      sliver: SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              Assets.imagesSkills,
              width: 250,
              height: 260,
            ),
            SizedBox(
              height: context.height * .03,
            ),
            Text(
              "No skills detected yet.",
              style: Styles.styleBold24(
                context,
              ).copyWith(fontSize: 24, color: AppColors.blackColor.withAlpha(180)),
            ),
            SizedBox(
              height: context.height * .01,
            ),
            Text(
              "Upload your CV to unlock\n your skills insights.",
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
    );
  }
}
