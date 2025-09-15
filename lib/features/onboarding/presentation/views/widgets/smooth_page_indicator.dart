import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../core/utils/app_colors.dart';

class SmoothIndicator extends StatelessWidget {
  const SmoothIndicator({required this.controller, super.key});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: const WormEffect(
        dotColor: AppColors.lightPrimaryColor,
        activeDotColor: AppColors.secondaryColor,
        radius: 30,
        dotHeight: 12,
        dotWidth: 12,
      ),
    );
  }
}
