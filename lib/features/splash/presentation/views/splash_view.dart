import 'dart:async';
import 'package:cvision/core/constants/helper_constants.dart';
import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with SingleTickerProviderStateMixin {
  final bool showOnBoarding = prefs.getBool(kShowOnBoarding) ?? true;
  final bool hideAuthView = prefs.getBool(kHideAuthView) ?? false;

  late AnimationController controller;

  late Animation<double> logoFade;

  late Animation<Offset> logoSlide;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    logoFade = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, .5, curve: Curves.easeIn),
    );

    logoSlide =
        Tween<Offset>(
          begin: const Offset(0, 0),
          end: const Offset(0.2, 0),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.3, 0.6, curve: Curves.easeInOut),
          ),
        );

    controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        if (showOnBoarding) {
          context.go(AppRouter.kOnBoardingView);
        } else if (hideAuthView) {
          context.go(AppRouter.kLayoutView);
        } else {
          context.go(AppRouter.kAuthView);
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(
        controller: controller,
        logoSlide: logoSlide,
        logoFade: logoFade,
      ),
    );
  }
}
