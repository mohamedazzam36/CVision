import 'package:cvision/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      collapsedHeight: 60,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
