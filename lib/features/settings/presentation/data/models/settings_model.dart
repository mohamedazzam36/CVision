import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SettingsModel {
  final IconData preIcon;
  final String title;
  final Color prefixColor;
  final VoidCallback onTap;

  const SettingsModel({
    required this.preIcon,
    required this.title,
    this.prefixColor = AppColors.primaryColor,
    required this.onTap,
  });
}
