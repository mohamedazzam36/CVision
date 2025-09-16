import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/content_of_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerOfSkills extends StatelessWidget {
  const ContainerOfSkills({
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
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffEDE7F6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ContentOfContainer(
            titleOfSkills: titleOfSkills,
            iconPath: iconPath,
            dummySkills: dummySkills,
            progressValue: progressValue,
          ),
        ),
      ),
    );
  }
}
