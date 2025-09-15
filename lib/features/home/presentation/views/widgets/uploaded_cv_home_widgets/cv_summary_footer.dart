import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/cv_sammary_item.dart';
import 'package:flutter/material.dart';

class CvSummaryFooter extends StatelessWidget {
  const CvSummaryFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 10,
      children: [
        Expanded(
          child: CvSammaryItem(
            title: '72%',
            subTitle: 'Score CV',
          ),
        ),
        Expanded(
          child: CvSammaryItem(
            title: '14',
            subTitle: 'Skills Detected',
          ),
        ),
        Expanded(
          child: CvSammaryItem(
            title: '3',
            subTitle: 'Gap',
          ),
        ),
      ],
    );
  }
}
