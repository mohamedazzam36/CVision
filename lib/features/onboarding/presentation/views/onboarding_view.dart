import 'package:cvision/features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:cvision/features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_states.dart';
import 'package:cvision/features/onboarding/presentation/views/widgets/on_boarding_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingStates>(
        builder: (context, state) => Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.lightPrimaryColor,
                  AppColors.lightThemePrimaryColor,
                  AppColors.darkPrimaryColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const OnBoardingScreenBody(),
          ),
        ),
      ),
    );
  }
}
