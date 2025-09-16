import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'list_of_skills.dart';

class ContentOfContainer extends StatelessWidget {
  const ContentOfContainer({
    super.key,
    required this.titleOfSkills,
    required this.iconPath,
    required this.dummySkills,
    required this.progressValue,
  });

  final String titleOfSkills, iconPath;
  final List<LearningSkillsModel> dummySkills;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 4,
          children: [
            SvgPicture.asset(
              iconPath,
            ),
            Text(
              titleOfSkills,
              style: Styles.styleBlack12(context).copyWith(
                fontSize: 12,
                color: AppColors.blackColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListOfSkills(
          dummySkills: dummySkills,
          progressValue: progressValue,
        ),
      ],
    );
  }
}
