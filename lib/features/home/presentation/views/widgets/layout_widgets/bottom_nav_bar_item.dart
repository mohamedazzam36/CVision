import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../../../../core/utils/app_colors.dart';

SalomonBottomBarItem bottomNavBarItem({
  required IconData iconPressed,
  required IconData icon,
  required String label,
}) => SalomonBottomBarItem(
  activeIcon: CircleAvatar(
    radius: 23,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.secondaryColor,
      child: Container(
        width: 46,
        height: 46,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xffB878EA),
              Color(0xff7E3FFD),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Icon(iconPressed, color: Colors.white, size: 28),
      ),
    ),
  ),
  icon: CircleAvatar(
    radius: 23,
    backgroundColor: Colors.white.withValues(alpha: .1),
    child: Icon(icon, color: AppColors.secondaryColor),
  ),
  title: Text(
    label,
    style: const TextStyle(
      fontSize: 16,
      color: AppColors.secondaryColor,
      fontWeight: FontWeight.w700,
      fontFamily: 'Merriweather',
    ),
  ),
  selectedColor: Colors.white,
  unselectedColor: Colors.white70,
);
