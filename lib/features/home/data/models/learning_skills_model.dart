import 'package:cvision/core/enums/skills_enum.dart';

class LearningSkillsModel {
  final String name, time, difficulty, priority, resources, level;
  final SkillState state;

  const LearningSkillsModel({
    required this.name,
    this.time = '20H',
    this.difficulty = 'Hard',
    this.priority = 'Important',
    this.resources = 'https://www.udemy.com/course/100-days-',
    required this.level,
    required this.state,
  });
}

List<LearningSkillsModel> dummySkills = const [
  LearningSkillsModel(name: 'Python', state: SkillState.completed, level: 'Advanced'),
  LearningSkillsModel(name: 'JavaScript', state: SkillState.completed, level: 'Intermediate'),
  LearningSkillsModel(name: 'FastAPI', state: SkillState.inProgress, level: 'Intermediate'),
  LearningSkillsModel(name: 'React', state: SkillState.upcoming, level: 'Intermediate'),
  LearningSkillsModel(name: 'Node.js', state: SkillState.upcoming, level: 'Beginner'),
  LearningSkillsModel(name: 'PostgreSQL', state: SkillState.upcoming, level: 'Beginner'),
];

List<LearningSkillsModel> dummyStrengthSkills = const [
  LearningSkillsModel(name: 'Python', state: SkillState.completed, level: 'Advanced'),
  LearningSkillsModel(name: 'JavaScript', state: SkillState.completed, level: 'Intermediate'),
  LearningSkillsModel(name: 'FastAPI', state: SkillState.inProgress, level: 'Intermediate'),
  LearningSkillsModel(name: 'React', state: SkillState.upcoming, level: 'Intermediate'),
  LearningSkillsModel(name: 'Node.js', state: SkillState.upcoming, level: 'Beginner'),
];
List<LearningSkillsModel> dummyGapSkills = const [
  LearningSkillsModel(name: 'MongoDB', state: SkillState.completed, level: 'Advanced'),
  LearningSkillsModel(name: 'Docker', state: SkillState.completed, level: 'Intermediate'),
  LearningSkillsModel(name: 'Kubernetes', state: SkillState.upcoming, level: 'Beginner'),
];
