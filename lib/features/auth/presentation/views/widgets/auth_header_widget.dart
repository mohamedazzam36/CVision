import 'package:cvision/core/utils/app_colors.dart';
import 'package:cvision/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            right: -MediaQuery.sizeOf(context).width * 0.3,
            bottom: 0,
            left: -MediaQuery.sizeOf(context).width * 0.3,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.darkPrimaryColor,
                      AppColors.primaryColor,
                      AppColors.primaryColor.withAlpha(190),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: 20,
            top: 70,
            bottom: 20,
            child: Center(
              child: SvgPicture.asset(
                Assets.imagesSvgLogo,
                width: 144,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
