import 'package:cvision/core/enums/skills_enum.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:flutter/widgets.dart';

extension LearningSkillsExtension on SkillState {
  String get icon {
    switch (this) {
      case SkillState.completed:
        return Assets.imagesCompletedSkillIcon;
      case SkillState.inProgress:
        return Assets.imagesInProgressSkillIcon;
      case SkillState.upcoming:
        return Assets.imagesUpcomingSkillIcon;
    }
  }

  String get state {
    switch (this) {
      case SkillState.completed:
        return 'Completed';
      case SkillState.inProgress:
        return 'In Progress';
      case SkillState.upcoming:
        return 'Upcoming';
    }
  }

  Color get color {
    switch (this) {
      case SkillState.completed:
        return const Color(0xff3DDC97);
      case SkillState.inProgress:
        return const Color(0xffA1BCF4);
      case SkillState.upcoming:
        return const Color(0xffD9D9D9);
    }
  }
}
