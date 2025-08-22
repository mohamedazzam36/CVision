import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LoginAndRegisterBodyBackgroundContainer extends StatelessWidget {
  const LoginAndRegisterBodyBackgroundContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      child: child,
    );
  }
}
