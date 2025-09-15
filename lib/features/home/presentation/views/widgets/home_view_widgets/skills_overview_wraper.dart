import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/skills_overview_wraper_item.dart';
import 'package:flutter/material.dart';

class SkillsOverviewWraper extends StatelessWidget {
  const SkillsOverviewWraper({super.key, required this.skillsList});

  final List<dynamic> skillsList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      runSpacing: 8,
      children: skillsList.map(
        (e) {
          return SkillsOverviewWraperItem(skillName: e);
        },
      ).toList(),
    );
  }
}
