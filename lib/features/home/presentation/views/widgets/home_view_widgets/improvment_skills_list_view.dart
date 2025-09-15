import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/detected_skills_list_view_item.dart';
import 'package:flutter/material.dart';

class ImprovmentSkillsListView extends StatelessWidget {
  const ImprovmentSkillsListView({super.key, required this.skillsList});

  final List<dynamic> skillsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: skillsList.length,
      itemBuilder: (context, index) {
        return DetectedSkillsListViewItem(
          skillName: skillsList[index],
          skillScore: 30,
        );
      },
    );
  }
}
