import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/content_of_container.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/utils/app_colors.dart';

class ContainerOfSkills extends StatelessWidget {
  const ContainerOfSkills({
    super.key,
    required this.titleOfSkills,
    required this.iconPath,
    required this.dummySkills,
  });

  final String titleOfSkills, iconPath;
  final List<LearningSkillsModel> dummySkills;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondaryColor.withValues(
          alpha: .5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ContentOfContainer(
          titleOfSkills: titleOfSkills,
          iconPath: iconPath,
          dummySkills: dummySkills,
        ),
      ),
    );
  }
}
