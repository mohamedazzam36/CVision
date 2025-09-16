import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class MainCvDetailsCard extends StatelessWidget {
  const MainCvDetailsCard({
    super.key,
    required this.child,
    this.elevation = 5,
    this.padding,
    this.backgroundColor,
  });

  final Widget child;
  final double elevation;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor ?? AppColors.secondaryColor,
      elevation: elevation,
      child: Container(
        padding: padding ?? const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }
}
