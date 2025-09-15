import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../manager/on_boarding_cubit/on_boarding_cubit.dart';
import 'custom_onboarding_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({required this.controller, super.key});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (context, state) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 72.0, vertical: 32),
        child: CustomOnBoardingButton(
          backgroundColor: AppColors.secondaryColor,
          text: context.onBoardingCubit.changeButtonText(),
          textColor: AppColors.lightThemePrimaryColor,
          icon: context.onBoardingCubit.isLast == true
              ? const SizedBox()
              : const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.lightThemePrimaryColor,
                ),
          onPressed: () async {
            if (context.onBoardingCubit.isLast == true) {
              await prefs.setBool(kShowOnBoarding, false);
              context.go(AppRouter.kAuthView);
            } else {
              controller.nextPage(
                duration: const Duration(
                  milliseconds: 1000,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
        ),
      ),
    );
  }
}
