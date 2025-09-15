import 'package:flutter/material.dart';

class LoadingProgressIndecator extends StatelessWidget {
  const LoadingProgressIndecator({
    super.key,
    required this.value,
    required this.height,
    required this.progressColor,
    required this.backgroundColor,
  });

  final double value;
  final double height;
  final Color progressColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: height,
      borderRadius: BorderRadius.circular(42),
      color: progressColor,
      backgroundColor: backgroundColor,
    );
  }
}
