import 'package:cvision/features/settings/presentation/views/widgets/faq_list_view.dart';
import 'package:cvision/core/widgets/custom_back_and_title_structure.dart';
import 'package:flutter/material.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBackAndTitleStructure(
        appBarTitle: 'FAQ',
        sliver: FaqListView(),
      ),
    );
  }
}
