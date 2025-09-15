import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:cvision/features/home/presentation/views/widgets/loading_view_widgets/custom_text_widget.dart';
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
      hasShodow: true,
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
            if (value == .25) const CustomTextWidget(text: "Extracting your skills…"),
            if (value == .50) const CustomTextWidget(text: "Matching with job market needs…"),
            if (value == .75) const CustomTextWidget(text: "Preparing your learning roadmap…"),
            if (value == 1)
              const CustomTextWidget(text: "It is finished and the result will be displayed now."),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
