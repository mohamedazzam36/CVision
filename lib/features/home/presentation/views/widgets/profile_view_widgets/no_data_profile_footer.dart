import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class NoDataProfileFooter extends StatelessWidget {
  const NoDataProfileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'Your profile will be personalized once you',
          style: Styles.styleRegular16(context).copyWith(fontSize: 16),
        ),
        CustomText(
          'upload your CV.',
          style: Styles.styleRegular16(context).copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
