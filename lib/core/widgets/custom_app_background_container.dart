import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBackgroundContainer extends StatelessWidget {
  const CustomAppBackgroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightThemePrimaryColor,
      ),
      child: child,
    );
  }
}
