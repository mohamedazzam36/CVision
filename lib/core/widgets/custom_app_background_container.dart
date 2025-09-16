import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBackgroundContainer extends StatelessWidget {
  const CustomAppBackgroundContainer({super.key, required this.child, this.isGradient = false});
  final Widget child;

  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightThemePrimaryColor,
        gradient: isGradient
            ? const LinearGradient(
                colors: [
                  AppColors.lightPrimaryColor,
                  AppColors.primaryColor,
                  AppColors.darkPrimaryColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
      ),
      child: child,
    );
  }
}
