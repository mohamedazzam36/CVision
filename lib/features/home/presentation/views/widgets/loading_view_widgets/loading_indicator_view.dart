import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loading_progress_indecator.dart';

class LoadingIndicatorScreen extends StatelessWidget {
  const LoadingIndicatorScreen({super.key, required this.value});

  final double value;
  @override
  Widget build(BuildContext context) {
    return CustomBackAndTitleStructure(
      appBarTitle: 'Analyzing Your CV',
      sliver: SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LoadingProgressIndecator(
                value: value,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              switch (value) {
                _ when (value > 0 && value < 0.25) => "Extracting your skills…",
                _ when (value > 0.25 && value < 0.5) => "Matching with job\n market needs…",
                _ when (value > 0.5 && value < 0.75) => 'Preparing your learning\n roadmap…',
                _ when (value > 0.75 && value < 1) =>
                  "It is finished and the result\n will be displayed now.",
                _ => "It is finished and the result\n will be displayed now.",
              },
              textAlign: TextAlign.center,
              style: Styles.styleBold20(
                context,
              ).copyWith(fontSize: 20, color: const Color(0xff6F6D6D)),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
