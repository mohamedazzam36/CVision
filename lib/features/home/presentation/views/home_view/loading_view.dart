import 'dart:async';
import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/views/home_view/score_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/loading_view_widgets/loading_indicator_view.dart';
import 'package:flutter/material.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startLoading();
  }

  void _startLoading() {
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      setState(() {
        progress += 0.25;
        if (progress >= 1.0) {
          timer.cancel();
          Future.microtask(() {
            context.navigateReplace(const ScoreView());
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoadingIndicatorScreen(value: progress),
    );
  }
}
