import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:cvision/features/home/data/models/button_nav_bar_model.dart';
import 'package:cvision/features/home/presentation/views/home_view/home_view.dart';
import 'package:cvision/features/home/presentation/views/learning_view.dart';
import 'package:cvision/features/home/presentation/views/profile_view.dart';
import 'package:cvision/features/home/presentation/views/skills_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(InitialState());

  int currentIndex = 0;
  bool isCvUploaded = prefs.getBool(kIsCvUploaded) ?? false;

  final List<ButtonNavBarModel> navBarItems = const [
    ButtonNavBarModel(
      iconPath: Assets.imagesHomeIcon,
      title: 'Home',
      filledIconPath: Assets.imagesFilledHomeIcon,
    ),
    ButtonNavBarModel(
      iconPath: Assets.imagesSkillsIcon,
      title: 'Skills',
      filledIconPath: Assets.imagesFilledSkillsIcon,
    ),
    ButtonNavBarModel(
      iconPath: Assets.imagesRoadmapIcon,
      title: 'Roadmap',
      filledIconPath: Assets.imagesFilledRoadmapIcon,
    ),
    ButtonNavBarModel(
      iconPath: Assets.imagesProfileIcon,
      title: 'Profile',
      filledIconPath: Assets.imagesFilledProfileIcon,
    ),
  ];

  List<Widget> screens = [
    const HomeView(),
    const SkillsView(),
    const LearningView(),
    const ProfileView(),
  ];

  void changeBottomNavBar(index) {
    if (currentIndex != index) {
      currentIndex = index;
      emit(ChangeBottomNavBarState());
    }
  }
}
