import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAuthBackgroundContainer extends StatelessWidget {
  const CustomAuthBackgroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightPrimaryColor,
            AppColors.primaryColor,
            AppColors.darkPrimaryColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}
