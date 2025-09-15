import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AuthBodyBackgroundContainer extends StatelessWidget {
  const AuthBodyBackgroundContainer({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      child: child,
    );
  }
}
