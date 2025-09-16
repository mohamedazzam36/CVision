import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/skill_card_item.dart';
import 'package:flutter/cupertino.dart';

class ListOfSkills extends StatelessWidget {
  const ListOfSkills({super.key, required this.dummySkills, required this.progressValue});

  final List<LearningSkillsModel> dummySkills;
  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) => SkillCardItem(
        title: dummySkills[index].name,
        level: dummySkills[index].level,
        progressValue: progressValue,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
      itemCount: dummySkills.length,
    );
  }
}
