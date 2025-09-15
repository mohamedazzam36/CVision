import 'package:cvision/core/extensions/helper_extensions.dart';
import 'package:cvision/features/home/presentation/views/home_view/score_view.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class LoadingProgressIndecator extends StatefulWidget {
  const LoadingProgressIndecator({super.key, required this.value});

  final double value;
  @override
  State<LoadingProgressIndecator> createState() => _LoadingProgressIndecatorState();
}

class _LoadingProgressIndecatorState extends State<LoadingProgressIndecator> {
  @override
  void initState() {
    super.initState();
    if (widget.value == 1) {
      setState(() {
        context.navigate(const ScoreView());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: widget.value,
      minHeight: 13,
      borderRadius: BorderRadius.circular(42),
      color: AppColors.lightThemePrimaryColor,
      backgroundColor: const Color(0xffD9D9D9),
    );
  }
}
