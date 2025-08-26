import 'package:cvision/core/extensions/app_helper_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
    required this.logoFade,
    required this.logoSlide,
    required this.controller,
  });

  final Animation<double> logoFade;
  final AnimationController controller;
  final Animation<Offset> logoSlide;

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
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: logoFade,
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(10 * logoSlide.value.dx, 0), // يتحرك 10px بس
                    child: child,
                  );
                },
                child: SvgPicture.asset(
                  Assets.imagesSvgLogo,
                  height: 120, // تحكمي في الحجم هنا
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
