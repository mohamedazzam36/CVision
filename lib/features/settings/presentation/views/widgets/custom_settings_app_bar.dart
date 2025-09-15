import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSettingsAppBar extends StatelessWidget {
  const CustomSettingsAppBar({super.key, required this.appBarTitle, this.hasShodow = false});

  final String appBarTitle;
  final bool hasShodow;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      floating: true,
      collapsedHeight: 75,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.darkPrimaryColor,
        ),
      ),
      centerTitle: true,
      title: CustomText(
        appBarTitle,
        style:
            Styles.styleBold24(
              context,
            ).copyWith(
              fontSize: 24,
              shadows: hasShodow
                  ? [
                      Shadow(
                        color: AppColors.blackColor.withAlpha(100),
                        blurRadius: 3,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
      ),
    );
  }
}
