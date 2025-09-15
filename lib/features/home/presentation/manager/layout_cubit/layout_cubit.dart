import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/features/home/presentation/views/home_view/home_view.dart';
import 'package:cvision/features/home/presentation/views/learning_view.dart';
import 'package:cvision/features/home/presentation/views/profile_view.dart';
import 'package:cvision/features/home/presentation/views/skills_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../views/widgets/layout_widgets/bottom_nav_bar_item.dart';
import 'layout_states.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(InitialState());

  int currentIndex = 0;
  bool isCvUploaded = prefs.getBool(kIsCvUploaded) ?? false;

  List<SalomonBottomBarItem> items = [
    /// Home
    bottomNavBarItem(
      iconPressed: Icons.home_filled,
      icon: Icons.home_outlined,
      label: "Home",
    ),

    /// Skills
    bottomNavBarItem(
      iconPressed: Icons.stacked_bar_chart,
      icon: Icons.stacked_bar_chart_rounded,
      label: "Skills",
    ),

    /// Library
    bottomNavBarItem(
      iconPressed: Icons.chrome_reader_mode,
      icon: Icons.route,
      label: "Roadmap",
    ),

    /// Profile
    bottomNavBarItem(
      iconPressed: Icons.person,
      icon: Icons.person_outline_rounded,
      label: "Profile",
    ),
  ];

  List<Widget> get screens => [
    HomeView(),
    SkillsView(),
    LearningView(),
    ProfileView(),
  ];

  void changeBottomNavBar(index) {
    if (currentIndex != index) {
      currentIndex = index;
      emit(ChangeBottomNavBarState());
    }
  }
}
