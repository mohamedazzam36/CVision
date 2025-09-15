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
  });

  final String titleOfSkills, iconPath;
  final List<LearningSkillsModel> dummySkills;

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
              style: Styles.styleBold12(context).copyWith(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListOfSkills(
          dummySkills: dummySkills,
        ),
      ],
    );
  }
}
