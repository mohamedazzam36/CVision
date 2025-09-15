import 'package:cvision/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularScore extends StatelessWidget {
  const CircularScore({
    super.key,
    required this.radius,
    required this.lineWidth,
    required this.percent,
    required this.backgroundColor,
    required this.progressColor,
  });

  final double radius;
  final double lineWidth;
  final double percent;
  final Color backgroundColor;
  final Color progressColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: CircularPercentIndicator(
        radius: radius,
        lineWidth: lineWidth,
        percent: percent,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score",
              style: Styles.styleBold24(
                context,
              ).copyWith(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
            ),
            Text("${percent * 100}%", style: Styles.styleRegular28(context).copyWith(fontSize: 32)),
          ],
        ),
        progressBorderColor: progressColor,
        progressColor: progressColor,
        backgroundColor: Colors.white,
        circularStrokeCap: CircularStrokeCap.square,
      ),
    );
  }
}
