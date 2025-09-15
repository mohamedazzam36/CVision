import 'package:cvision/core/constants/main_app_strings.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'Privacy Policy',
        sliver: SliverToBoxAdapter(
          child: Text(
            kPrivacyPolicy,
            style: Styles.styleRegular16(context).copyWith(fontSize: 16,),
          ),
        ),
      ),
    );
  }
}
