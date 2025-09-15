import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/extensions/access_cubits_extensions.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_cubit.dart';
import 'package:cvision/features/onboarding/presentation/manager/on_boarding_cubit/on_boarding_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (BuildContext context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                if (!context.onBoardingCubit.isLast) {
                  prefs.setBool(kShowOnBoarding, false);
                  context.go(AppRouter.kAuthView);
                }
              },
              child: context.onBoardingCubit.isLast
                  ? const SizedBox()
                  : Text(
                      "Skip",
                      style: Styles.styleBold16(context).copyWith(
                        fontSize: 16,
                        color: const Color(0xffFDFCFC),
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}
