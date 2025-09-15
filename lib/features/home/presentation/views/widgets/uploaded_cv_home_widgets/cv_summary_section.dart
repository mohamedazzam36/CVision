import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/cv_summary_footer.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/cv_summary_header.dart';
import 'package:cvision/features/home/presentation/views/widgets/uploaded_cv_home_widgets/main_cv_details_card.dart';
import 'package:flutter/material.dart';

class CvSummarySection extends StatelessWidget {
  const CvSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainCvDetailsCard(
      opasity: 170,
      child: Column(
        children: [
          CvSummaryHeader(),
          SizedBox(
            height: 16,
          ),
          CvSummaryFooter(),
        ],
      ),
    );
  }
}
