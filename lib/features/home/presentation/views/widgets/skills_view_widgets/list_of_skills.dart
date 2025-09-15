import 'package:cvision/features/home/data/models/learning_skills_model.dart';
import 'package:cvision/features/home/presentation/views/widgets/skills_view_widgets/skill_card_item.dart';
import 'package:flutter/cupertino.dart';

class ListOfSkills extends StatelessWidget {
  const ListOfSkills({super.key, required this.dummySkills});

  final List<LearningSkillsModel> dummySkills;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) => SkillCardItem(
        title: dummySkills[index].name,
        level: dummySkills[index].level,
      ),
      separatorBuilder: (context, index) => const SizedBox(
        height: 5,
      ),
      itemCount: dummySkills.length,
    );
  }
}
