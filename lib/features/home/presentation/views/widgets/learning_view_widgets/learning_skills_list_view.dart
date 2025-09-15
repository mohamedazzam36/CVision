import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/learning_view_widgets/learning_skills_list_view_item.dart';
import 'package:flutter/material.dart';

class LearningSkillsListView extends StatelessWidget {
  const LearningSkillsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      shrinkWrap: true,
      itemCount: dummySkills.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: index == dummySkills.length - 1 ? 0 : 12),
          child: LearningSkillsListViewItem(skill: dummySkills[index]),
        );
      },
    );
  }
}
