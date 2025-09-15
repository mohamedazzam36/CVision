import 'package:cvision/core/constants/main_app_strings.dart';
import 'package:cvision/core/utils/app_styles.dart';
import 'package:cvision/features/auth/presentation/views/widgets/auth_widgets/main_auth_views_structutre.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainAuthViewsStructure(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            kCVisionTermsAndPrivacy,
            style: Styles.styleBold20(context).copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
