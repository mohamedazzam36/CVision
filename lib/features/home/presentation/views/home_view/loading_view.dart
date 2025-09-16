import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/views/home_view/score_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/loading_view_widgets/loading_indicator_view.dart';
import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TweenAnimationBuilder(
        onEnd: () => context.navigateReplace(const ScoreView()),
        duration: const Duration(seconds: 4),
        tween: Tween(begin: 0.0, end: 1),
        builder: (context, value, child) {
          return LoadingIndicatorScreen(value: value.toDouble());
        },
      ),
    );
  }
}
